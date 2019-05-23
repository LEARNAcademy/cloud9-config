## Port 8080
Out of the box, only port 8080 is exposed in a Cloud 9 app

## Sharing a cloud9 preview publicly

Follow the docs below, skip Step 3 & 4

[https://docs.aws.amazon.com/cloud9/latest/user-guide/app-preview.html#app-preview-share](https://docs.aws.amazon.com/cloud9/latest/user-guide/app-preview.html#app-preview-share)

## EC2 Instance ID

```
curl http://169.254.169.254/latest/meta-data/instance-id
```

##  EC2 instance's public IP address

```
curl http://169.254.169.254/latest/meta-data/public-ipv4
```

