## http[CREATE] EC2 instances
```bash
aws cloudformation \
create-stack \
--stack-name publicInstance1 \
--template-body file://public-instance-1.yaml \
--profile pheobe
```

## http [DELETE] EC2 instances
```bash
aws cloudformation \
delete-stack \
--stack-name publicInstance1 \
--profile pheobe
```

## http [CREATE] Private subnets
```bash
aws cloudformation \
create-stack \
--stack-name privatesubnets-sgp \
--template-body file://private-subnets.yaml \
--profile pheobe
```

## http [UPDATE] Private subnets
```bash
aws cloudformation \
update-stack \
--stack-name privatesubnets-sgp \
--template-body file://private-subnets.yaml \
--profile pheobe
```
