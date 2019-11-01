# Public-Cloud-Operator

### install awscli with ubuntu 

```bash
`sudo apt install awscli`
```

```bash
`aws configure`
```

### EC2

```bash
# query instances
`aws ec2 describe-instances`
```

#### S3

```bash
# query s3
`aws s3 ls`
```

```bash
# s3
`aws s3 ls | grep myproject | awk '{print "aws s3 rm s3://" $3, "--recursive" }'`
`aws s3 ls | grep myproject | awk '{print "aws s3 rb s3://" $3, "--force" }'`
```

<!-- aws ec2 terminate-instances --instance-ids i-0564f8836df1fbd1c

aws ec2 describe-instances

Region Name	区域	Endpoint	Protocol
美國東部 (俄亥俄)	us-east-2	apigateway.us-east-2.amazonaws.com	HTTPS
美國東部 (維吉尼亞北部)	us-east-1	apigateway.us-east-1.amazonaws.com	HTTPS
美國西部 (加利佛尼亞北部)	us-west-1	apigateway.us-west-1.amazonaws.com	HTTPS
美國西部 (奧勒岡)	us-west-2	apigateway.us-west-2.amazonaws.com	HTTPS
亞太區域 (香港)	ap-east-1	apigateway.ap-east-1.amazonaws.com	HTTPS
亞太區域 (孟買)	ap-south-1	apigateway.ap-south-1.amazonaws.com	HTTPS
亞太區域 (首爾)	ap-northeast-2	apigateway.ap-northeast-2.amazonaws.com	HTTPS
亞太區域 (新加坡)	ap-southeast-1	apigateway.ap-southeast-1.amazonaws.com	HTTPS
亞太區域 (雪梨)	ap-southeast-2	apigateway.ap-southeast-2.amazonaws.com	HTTPS
亞太區域 (東京)	ap-northeast-1	apigateway.ap-northeast-1.amazonaws.com	HTTPS
加拿大 (中部)	ca-central-1	apigateway.ca-central-1.amazonaws.com	HTTPS
中國 (北京)	cn-north-1	apigateway.cn-north-1.amazonaws.com.cn	HTTPS
中國 (寧夏)	cn-northwest-1	apigateway.cn-northwest-1.amazonaws.com.cn	HTTPS
歐洲 (法蘭克福)	eu-central-1	apigateway.eu-central-1.amazonaws.com	HTTPS
歐洲 (愛爾蘭)	eu-west-1	apigateway.eu-west-1.amazonaws.com	HTTPS
歐洲 (倫敦)	eu-west-2	apigateway.eu-west-2.amazonaws.com	HTTPS
歐洲 (巴黎)	eu-west-3	apigateway.eu-west-3.amazonaws.com	HTTPS
歐洲 (斯德哥爾摩)	eu-north-1	apigateway.eu-north-1.amazonaws.com	HTTPS
中東 (巴林)	me-south-1	apigateway.me-south-1.amazonaws.com	HTTPS
南美洲 (聖保羅)	sa-east-1	apigateway.sa-east-1.amazonaws.com	HTTPS
AWS GovCloud (미국 동부)	us-gov-east-1	apigateway.us-gov-east-1.amazonaws.com	HTTPS
AWS GovCloud (美國)	us-gov-west-1	apigateway.us-gov-west-1.amazonaws.com	HTTPS -->