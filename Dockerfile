FROM openjdk

 

COPY ./target/data-jpa-0.0.1-SNAPSHOT*.jar /root/new/Inventory-Management-System-Spring-Boot/target

 

WORKDIR /usr/app

 

EXPOSE 8080

 

ENTRYPOINT ["java","-jar","data-jpa-0.0.1-SNAPSHOT*.jar"]
