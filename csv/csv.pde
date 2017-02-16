Table table;
PrintWriter output;

void setup() {
  
  table = loadTable("portfolio.csv", "header");
  
  println(table.getRowCount() + " total rows in table"); 

  for (TableRow row : table.rows()) {
    
    String link = row.getString("link");
    String titulo = row.getString("titulo");
    String sinopse = row.getString("sinopse");
    String english = row.getString("english");
    String categoria = row.getString("categoria");
    String mes = row.getString("mes");
    String ano = row.getString("ano");
    String imagem1 = row.getString("imagem1");
    String imagem2 = row.getString("imagem2");
    String imagem3 = row.getString("imagem3");
    String imagem4 = row.getString("imagem4");
    String externo = row.getString("externo");
    
    println(titulo);
    output = createWriter("2017-01-01-"+link+".md");
    output.println("---");
    output.println("layout: project");
    output.println("permalink: /ajax/"+link+".html");
    output.println("titulo: \""+titulo+"\"");
    output.println("sinopse: \""+sinopse+"\"");
    output.println("english: \""+english+"\"");
    output.println("categoria: \""+categoria+"\"");
    output.println("mes: "+ mes);
    output.println("ano: "+ ano);
    output.println("imagem1: "+imagem1);
    output.println("imagem2: images/"+imagem2+".jpg");
    output.println("imagem3: images/"+imagem3+".jpg");
    output.println("imagem4: images/"+imagem4+".jpg");
    output.println("externo: "+externo);
    output.println("---");
    
    output.flush(); // Writes the remaining data to the file
    output.close(); // Finishes the file
  }
}
