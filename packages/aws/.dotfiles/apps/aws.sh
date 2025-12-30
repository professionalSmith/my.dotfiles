function aws-rds-stop() {
    aws rds stop-db-instance --db-instance-identifier $1
}

function aws-rds-start() {
    aws rds start-db-instance --db-instance-identifier $1
}
