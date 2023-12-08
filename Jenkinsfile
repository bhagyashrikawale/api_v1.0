pipeline { 
agent {label 'dev'}
stages {  
stage ("checkout") { 
steps {
git  https://github.com/bhagyashrikawale/api_v1.0.git
}
}
stage ("build") { 
steps {
dir ('/webapps/api_v1.0/') {
sh "mvn clean package"
}
}
}
stage ("docker-build") {
steps {
sh "docker build -td webapi:1.0"
sh "docker push bhagyashrikawale/api_v1.0:new"
}
}
stage ("deploy") {
steps {
sh "docker run -it webapi:1.0 -p 8080:8081 bash"
}
}
}
post {
success notification {
 email kawalebhagya22@gmail.com
}
}
}



