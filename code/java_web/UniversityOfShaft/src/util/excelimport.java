package util;

import java.io.File;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

public class excelimport {
	/**
	 * Excel导入，
	 * @param path为文件路径
	 */
	public static String[][] Import(String path){
		 //创建Excel文件
		String [][]data;
		data=null;
		try {
			//创建workbook
			Workbook workbook=Workbook.getWorkbook(new File(path));
			//获取工作表
			Sheet sheet=workbook.getSheet(0);
			//获取数据			
			data=new String[sheet.getRows()][sheet.getColumns()];
			for(int i=0;i<sheet.getRows();i++){
				for(int j=0;j<sheet.getColumns();j++){
					Cell cell=sheet.getCell(j, i);
					data[i][j]=cell.getContents();
//					System.out.print(cell.getContents()+"  ");
				}
			}
			workbook.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return data;
	}
	
	/**
	 * excel模板生成
	 * @param path
	 * @param title
	 */
	public static void create(String path,String title[]){		
		//创建Excel文件
		File file=new File(path);
		try {
			file.createNewFile();
			for (int i = 0; i < title.length; i++) {
				System.out.println(title[i]);
			}
			//创建工作簿
			WritableWorkbook workbook=Workbook.createWorkbook(file);
			//创建sheet
			WritableSheet sheet=workbook.createSheet("sheet1", 0);
			Label label=null;
			//第一行设置
			for (int i = 0; i < title.length; i++) {
				label=new Label(i,0,title[i]);
				sheet.addCell(label);
			}
			workbook.write();
			workbook.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
