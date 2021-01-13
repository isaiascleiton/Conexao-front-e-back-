<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>

<html lang="pt-br">
    <head>
    <head>
	<style>
	body {
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    background-color: black;
    color:white;
}

p{
    color: orange;
    text-align: center;
    font-family: Helvetica;
}
p:hover {
    color: white;

}

h1 {
    background-color: #000 ;
    text-align: center;
    color: orange;
}
h1:hover {
    color: #FF4000;
}

h2 {
    text-align: center;
    color: white;
}
h2:hover {
    color: orange;
}

.content {
    display: flex;
    justify-content: center;
}

.formulario {
    width: 100%;
    max-width: 500px;
}

.forms {
    display: flex;
    justify-content: center;
}

.caixa {
    padding: 10px;
    margin-right: 15px;
    margin-left: 15px;
    text-align: center;
}


button {
	font-family: inherit;
	cursor: pointer;	
}
.btn {
	font-size: 14px;
	text-transform: uppercase;
	font-weight: 700;
	border: 0;
	padding: 0.5em 1em;
	display: inline-block;
	color: #FFF;
	background: #F60;
	text-shadow: 2px 2px 2px rgba(0,0,0,0.5);
	border-radius: 0.5em;
	box-shadow: 2px 2px 0 1px #930;
	transition: box-shadow 0.3s ease, transform 0.3s ease;
}

.btn:active {
    box-shadow: 0 0 0 0 #930, inset 3px 3px 3px #930;
   transform: translate(3px, 3px); 
    
}

	</style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Calculador de IMC</title>
</head>
<body>
    <section class="content">
        <div class="formulario">
            <h1>Calculador de IMC</h1>
            <hr>
            <h2>Digite seu peso e altura.</h2>
            <form class="forms" method="POST" action="index.jsp">
                Peso: <input class="caixa" name="peso">
                Altura: <input class="caixa" name="altura">
                <button class="btn" type="submit" value="Enviar"> Enviar </button>
            </form>
        </div>  
    </section>
        
        <%
            String peso = request.getParameter("peso");
            String altura = request.getParameter("altura");
            if(peso != null && altura != null){
                double peso1 = Double.parseDouble(peso);
                double altura1 = Double.parseDouble(altura);

                double imc = peso1/ Math.pow (altura1 , 2);
                
        
                if (imc < 18.5){
                    int imcc = (int)imc;
                %> 
                    <p>IMC = <%=imcc%></p>
                    <p> Classificação : Magreza </p>
                    <p>Você precisa de uma dieta hipercalórica </p>
                <%
                }

                if (imc >= 18.5 & imc < 25 ) {
                    int imcc = (int)imc;
                    %>
                    <p>IMC = <%=imcc%></p>
                    <p> Classificação : Normal</p>
                    <p>Você precisa de uma dieta normocalórica</p>
                    <%
                }

                if (imc >= 25 & imc < 30 ) {
                    int imcc = (int)imc;
                    %>
                    <p>IMC = <%=imcc%></p>
                    <p> Classificação : Sobrepeso</p>
                    <p>Você precisa de uma dieta hipocalórica</p>
                    <%
                }

                if (imc > 30 ) {
                    int imcc = (int)imc;
                    %> 
                    <p>IMC = <%=imcc%></p>
                    <p> Classificação : Obesidade</p>
                    <p>Você precisa de uma dieta hipocalórica</p>
                    <%
                }
            }
        %>
        
    </body>
</html>