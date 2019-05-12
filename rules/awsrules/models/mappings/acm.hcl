mapping {
  resource {
    type      = "aws_acm_certificate"
    attribute = "certificate_body"
  }

  model {
    path  = "aws-sdk-go/models/apis/acm/2015-12-08/api-2.json"
    shape = "CertificateBody"
  }

  test {
    ok = <<CERTIFICATE
-----BEGIN CERTIFICATE-----
MIIDDjCCAfYCCQCMlVDEcxV0gDANBgkqhkiG9w0BAQUFADBJMQswCQYDVQQGEwJK
QTEKMAgGA1UECAwBYTEKMAgGA1UEBwwBYjEKMAgGA1UECgwBYTEKMAgGA1UECwwB
YTEKMAgGA1UEAwwBYTAeFw0xOTA1MTQxNTUxMjhaFw0yOTA1MTExNTUxMjhaMEkx
CzAJBgNVBAYTAkpBMQowCAYDVQQIDAFhMQowCAYDVQQHDAFiMQowCAYDVQQKDAFh
MQowCAYDVQQLDAFhMQowCAYDVQQDDAFhMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
MIIBCgKCAQEAuY6k+pUBFm8jXhzBHiycUTe8D5nyV31kiS+Nr2DzPDcvDcVLVBPH
mGr7CUEqdj3MAcVWGrYFTzXi97GjxsXxqZCLmj4EDtZ+2vjvt1W/xgDXt4PUV/96
dvNAx3ZvqaaUaevMoYrzK7c541yQnmzosfinYBwTC1KsduxVpqnISfr0O+MJrg0d
WOX4evTQ5+/ZAfGSYlKWVkNAj64KIvCsVlPBU9CZ0MQbxOgifNT9v9S7Sf/54GrM
rsd+490euEOGS4E1/VbQF/gZ6MvTYfcE2+s244escztWzeCMGhb3PstheYGb3Lep
ud6fw37JCCPlrh+hnOpx6zf4P1ePVaPt2QIDAQABMA0GCSqGSIb3DQEBBQUAA4IB
AQCoj/sZfrypif6AoLkqg2WimmK2KvWNf4srEVgI8BBIpnQpmvYdMKm4IBta8eWO
E9Sdh2u8dnTpn9TEwK/hJpisRZey7H4pPXde86QHmJF1YjF+gdwgpsayIHsfCYJ9
LJxew68jxO9YANwHy6RlS3c+hcNIWfSMOoct/P6vVkcMKOgA/hiMfHELlMzBK68U
r+Ae7wRjNF4Whbxc6bdTOLocmhOjy6IvPC8x6K5RdOYaxVpRNgUz6WgQUI1gZ3hu
YjSaGdqonttvSXhhSnoQEAHIpxvHq/PjOc5qEnzOt9nlYp3Ohr6WQAZfF3iwdd3l
Q2V76qkXAhIjADC7VpZKJiij
-----END CERTIFICATE-----
CERTIFICATE

    ng = <<CERTIFICATE
-----BEGIN CERTIFICATE REQUEST-----
MIICjjCCAXYCAQAwSTELMAkGA1UEBhMCSkExCjAIBgNVBAgMAWExCjAIBgNVBAcM
AWIxCjAIBgNVBAoMAWExCjAIBgNVBAsMAWExCjAIBgNVBAMMAWEwggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQC5jqT6lQEWbyNeHMEeLJxRN7wPmfJXfWSJ
L42vYPM8Ny8NxUtUE8eYavsJQSp2PcwBxVYatgVPNeL3saPGxfGpkIuaPgQO1n7a
+O+3Vb/GANe3g9RX/3p280DHdm+pppRp68yhivMrtznjXJCebOix+KdgHBMLUqx2
7FWmqchJ+vQ74wmuDR1Y5fh69NDn79kB8ZJiUpZWQ0CPrgoi8KxWU8FT0JnQxBvE
6CJ81P2/1LtJ//ngasyux37j3R64Q4ZLgTX9VtAX+Bnoy9Nh9wTb6zbjh6xzO1bN
4IwaFvc+y2F5gZvct6m53p/DfskII+WuH6Gc6nHrN/g/V49Vo+3ZAgMBAAGgADAN
BgkqhkiG9w0BAQsFAAOCAQEAA4W/lkp3oTmjIoyhZxUMv7b1zcRU/s9juzvYdfMB
nkty65GIKc8VgRSdgdXHg9LyAmG2fw/Ek7fHzMb10a6AR6nNn8dDmDSJgP/Li/qH
65ufOAZFwaQESmaOKuixXzpOl55k4iJCgWng1ejxZ1CSQczWdchLgW6af+ykUgLK
i2H5CazWnCBtBRonsDKFE6TYH0NEqdFE/kAyWtKiMOXAV8Jyr2p8K5hMG/8Cusux
Oe04sLexs2p1Og6LKAv9aWk0wYKB15Zjgx1EqKGJOwHJ5pOVXyGiQAnkqGaC0Q4N
EUNkhA1s4v7yBuNuulIfhcbyOeLwnzElTz5RrV/1hgMWMg==
-----END CERTIFICATE REQUEST-----
CERTIFICATE
  }
}

mapping {
  resource {
    type      = "aws_acm_certificate"
    attribute = "certificate_chain"
  }

  model {
    path  = "aws-sdk-go/models/apis/acm/2015-12-08/api-2.json"
    shape = "CertificateChain"
  }

  test {
    ok = <<CHAIN
-----BEGIN CERTIFICATE-----
MIIEWjCCA0KgAwIBAgIQBUNA0KLEzIER+qg3fUbgbzANBgkqhkiG9w0BAQsFADBa
MQswCQYDVQQGEwJJRTESMBAGA1UEChMJQmFsdGltb3JlMRMwEQYDVQQLEwpDeWJl
clRydXN0MSIwIAYDVQQDExlCYWx0aW1vcmUgQ3liZXJUcnVzdCBSb290MB4XDTE2
MTExNTEyMDMzMVoXDTI1MDUxMDEyMDAwMFowWjELMAkGA1UEBhMCSlAxIzAhBgNV
BAoTGkN5YmVydHJ1c3QgSmFwYW4gQ28uLCBMdGQuMSYwJAYDVQQDEx1DeWJlcnRy
dXN0IEphcGFuIFB1YmxpYyBDQSBHMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC
AQoCggEBAJRWo0VEVKpgZL+4V59O29R5aF8TBfQ/zSXdPF5Ydxyd5p/jMknvAjo0
U41S5eM5Zh/nM2G2J8YkVVAnAmXwsIxBjTBeR1uCb8ecoyhDbVh7yBWYTiVvy3Yn
WwssLLWYI+eLfP13GsRSul0Z7nghTSGa2RJ8MxVrGsmB6traV7fVL84fS/y0M+Cg
yZQnuydAtpDbrJ51phErSRktw8JDBwm7PW6Io+OKxdKG9mVbNMOfTALlCbosxnZm
69F2JfQwE/tYYKhY41FvSwgEYY2sqTAvUkGjIsEzWat7WfmTZ0vJiXVS7ylJNJMc
nJNznBnOXBjNTAknwT/1Sez04t9Lr48CAwEAAaOCARowggEWMB0GA1UdDgQWBBRz
qAhTKbgV+5mA5cU32Pg5e6QTBjAfBgNVHSMEGDAWgBTlnVkwgkdYzKz6CFQ2hns6
tQRN8DASBgNVHRMBAf8ECDAGAQH/AgEAMA4GA1UdDwEB/wQEAwIBhjA0BggrBgEF
BQcBAQQoMCYwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0LmNvbTA6
BgNVHR8EMzAxMC+gLaArhilodHRwOi8vY3JsMy5kaWdpY2VydC5jb20vT21uaXJv
b3QyMDI1LmNybDA+BgNVHSAENzA1MDMGBWeBDAECMCowKAYIKwYBBQUHAgEWHGh0
dHBzOi8vd3d3LmRpZ2ljZXJ0LmNvbS9DUFMwDQYJKoZIhvcNAQELBQADggEBABqR
cPGWxhjLeEP8gzZ29OHVpL8EFWNvpnEbpnAWa1uYmFNf0fsSoibP04UCB0Ye21KA
jPNuTE2OWpgxlTVvl99sIJFKhXCIn6OWCLQpbjFMu8Ro5rdzg4ekedsihWN9NMwU
+K8DqO+oukIYjF2zPnnwcSykKaUhdi0BqUtmzJhHkFjoslJllOXiJ4DQkbpjiQpR
yjPfliI1wzAcOM3xxswHAxOq8BVHKErKYUqHkHgHFZ6Ycts+sShKqVf+Zdx9zYJV
pItiSs0DDCCFapxWACouIVY+xPYG8EMUWXz0gK8SAwNHXLRxBtjNWhCGOiSN+ihp
277L8LbKp8eA8OlOMiU=
-----END CERTIFICATE-----
CHAIN

    ng = <<CHAIN
-----BEGIN PRIVATE KEY-----
MIIEpAIBAAKCAQEAuY6k+pUBFm8jXhzBHiycUTe8D5nyV31kiS+Nr2DzPDcvDcVL
VBPHmGr7CUEqdj3MAcVWGrYFTzXi97GjxsXxqZCLmj4EDtZ+2vjvt1W/xgDXt4PU
V/96dvNAx3ZvqaaUaevMoYrzK7c541yQnmzosfinYBwTC1KsduxVpqnISfr0O+MJ
rg0dWOX4evTQ5+/ZAfGSYlKWVkNAj64KIvCsVlPBU9CZ0MQbxOgifNT9v9S7Sf/5
4GrMrsd+490euEOGS4E1/VbQF/gZ6MvTYfcE2+s244escztWzeCMGhb3PstheYGb
3Lepud6fw37JCCPlrh+hnOpx6zf4P1ePVaPt2QIDAQABAoIBAGN8EAXtV3zwrzSp
E/0ai+Cbki+HKUAxEXLf1QX/Y8mYCJlIex+jzzJvwRHwJ1TnwvX8GDMP/f6+9GY6
joVm4S85OS/EKibOZ4r9RoCz77K4Bu/0NSfM6JrXxpZqcGmzzwSPENJXjhKVFOtK
WJsn5wZsO0izJJ7Af4jvIujNRH4sq8oO0T5OHNlJprrR8KY7+7IJrAd+JyCWxuX3
uToqrQALpZjSLi0+60+UZIVH+F4yJtkar1MS+K5bAAtX6gxaq3embIOD5KCooHpf
+CXBuWhUpFIqdWWDKJunnbriuXPBVVx1BZBtALUMPEYZ+gR22l2s/ck0BGixsdcN
VwDluuUCgYEA9k64okPnwUAQXyoHnA09zSJ0acr4aX/lqixY+fx0yn5Rs46WuFl0
OkUSZ3YMoj5MM/hmrMgz2v7bleVDrsZYUM4//9bYVxRIf1/gHm6PRJDnAMDEiz7y
crJCD1HTk/4CTcufbVnyyDt7NQe+qL9wRbTUMIojdZ1PsThv4zOuNhMCgYEAwNvu
LXhUJ7Wc92xFwRbmhNw8nQu0YgwVkGiD5QMY/6FJhcGdLa/Ih3NvyZI+Q/x/qzTh
udCHHlMgAftx5uA7IpZxQo0ak5a/T46X1EvRqcPZvOyDliBeYhhAXflyNfusmm5X
cExL6g3aUXxa7ue255xkKo2Q1VH+b9YeP+pZeeMCgYEA2VqEkiTMWfvXtrLXPj1t
IR3bjxQe/LJxkCdMaWYABkVMgeA9XvcJmvYjFIvXAEFra50zthuBryqhyfgkLxI3
Ey++yFzmUonCpCyOESzNXttkDoUNrDdjKhXmN7Ckvf80N0SOLqhml43t3tEzzaQK
RmkZqq/sNLkafzBnhB6yCGMCgYEAqtFhiXadmzpZ2DBXLCobbSwgp7zZPUqUwv4/
bFUtDCYQF9+gVvnuNELDjZbxfYgkkEDbeZhARVS88eSDQ0nyNrVnhdmy42xO8KlM
w2WQQ7xLm/Ekr5Dl6B6wzEuHpFbQz0vSOI3rY1h3uVras+Yac9RqR+JxmO/x256b
1mK8c58CgYAA2zWV1m34tdbUmhc6ELNznbPxaM4sAe7mVooSxs02pTN5ToxMpkyn
hLL+1AMBOhv57k6YDTzYf5adR38023TOrf6NuD9G5s0KeaFM8c7SrBt8BHA6MW9C
7kJKP9RgFcXPFH6Z57rKykRaaDR6M+ELrhd488tOmqlwS9tnnWuoBQ==
-----END PRIVATE KEY-----
CHAIN
  }
}

mapping {
  resource {
    type      = "aws_acm_certificate"
    attribute = "private_key"
  }

  model {
    path  = "aws-sdk-go/models/apis/acm/2015-12-08/api-2.json"
    shape = "PrivateKey"
  }

  test {
    ok = <<KEY
-----BEGIN PRIVATE KEY-----
MIIEpAIBAAKCAQEAuY6k+pUBFm8jXhzBHiycUTe8D5nyV31kiS+Nr2DzPDcvDcVL
VBPHmGr7CUEqdj3MAcVWGrYFTzXi97GjxsXxqZCLmj4EDtZ+2vjvt1W/xgDXt4PU
V/96dvNAx3ZvqaaUaevMoYrzK7c541yQnmzosfinYBwTC1KsduxVpqnISfr0O+MJ
rg0dWOX4evTQ5+/ZAfGSYlKWVkNAj64KIvCsVlPBU9CZ0MQbxOgifNT9v9S7Sf/5
4GrMrsd+490euEOGS4E1/VbQF/gZ6MvTYfcE2+s244escztWzeCMGhb3PstheYGb
3Lepud6fw37JCCPlrh+hnOpx6zf4P1ePVaPt2QIDAQABAoIBAGN8EAXtV3zwrzSp
E/0ai+Cbki+HKUAxEXLf1QX/Y8mYCJlIex+jzzJvwRHwJ1TnwvX8GDMP/f6+9GY6
joVm4S85OS/EKibOZ4r9RoCz77K4Bu/0NSfM6JrXxpZqcGmzzwSPENJXjhKVFOtK
WJsn5wZsO0izJJ7Af4jvIujNRH4sq8oO0T5OHNlJprrR8KY7+7IJrAd+JyCWxuX3
uToqrQALpZjSLi0+60+UZIVH+F4yJtkar1MS+K5bAAtX6gxaq3embIOD5KCooHpf
+CXBuWhUpFIqdWWDKJunnbriuXPBVVx1BZBtALUMPEYZ+gR22l2s/ck0BGixsdcN
VwDluuUCgYEA9k64okPnwUAQXyoHnA09zSJ0acr4aX/lqixY+fx0yn5Rs46WuFl0
OkUSZ3YMoj5MM/hmrMgz2v7bleVDrsZYUM4//9bYVxRIf1/gHm6PRJDnAMDEiz7y
crJCD1HTk/4CTcufbVnyyDt7NQe+qL9wRbTUMIojdZ1PsThv4zOuNhMCgYEAwNvu
LXhUJ7Wc92xFwRbmhNw8nQu0YgwVkGiD5QMY/6FJhcGdLa/Ih3NvyZI+Q/x/qzTh
udCHHlMgAftx5uA7IpZxQo0ak5a/T46X1EvRqcPZvOyDliBeYhhAXflyNfusmm5X
cExL6g3aUXxa7ue255xkKo2Q1VH+b9YeP+pZeeMCgYEA2VqEkiTMWfvXtrLXPj1t
IR3bjxQe/LJxkCdMaWYABkVMgeA9XvcJmvYjFIvXAEFra50zthuBryqhyfgkLxI3
Ey++yFzmUonCpCyOESzNXttkDoUNrDdjKhXmN7Ckvf80N0SOLqhml43t3tEzzaQK
RmkZqq/sNLkafzBnhB6yCGMCgYEAqtFhiXadmzpZ2DBXLCobbSwgp7zZPUqUwv4/
bFUtDCYQF9+gVvnuNELDjZbxfYgkkEDbeZhARVS88eSDQ0nyNrVnhdmy42xO8KlM
w2WQQ7xLm/Ekr5Dl6B6wzEuHpFbQz0vSOI3rY1h3uVras+Yac9RqR+JxmO/x256b
1mK8c58CgYAA2zWV1m34tdbUmhc6ELNznbPxaM4sAe7mVooSxs02pTN5ToxMpkyn
hLL+1AMBOhv57k6YDTzYf5adR38023TOrf6NuD9G5s0KeaFM8c7SrBt8BHA6MW9C
7kJKP9RgFcXPFH6Z57rKykRaaDR6M+ELrhd488tOmqlwS9tnnWuoBQ==
-----END PRIVATE KEY-----
KEY

    ng = <<KEY
-----BEGIN CERTIFICATE-----
MIIDDjCCAfYCCQCMlVDEcxV0gDANBgkqhkiG9w0BAQUFADBJMQswCQYDVQQGEwJK
QTEKMAgGA1UECAwBYTEKMAgGA1UEBwwBYjEKMAgGA1UECgwBYTEKMAgGA1UECwwB
YTEKMAgGA1UEAwwBYTAeFw0xOTA1MTQxNTUxMjhaFw0yOTA1MTExNTUxMjhaMEkx
CzAJBgNVBAYTAkpBMQowCAYDVQQIDAFhMQowCAYDVQQHDAFiMQowCAYDVQQKDAFh
MQowCAYDVQQLDAFhMQowCAYDVQQDDAFhMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
MIIBCgKCAQEAuY6k+pUBFm8jXhzBHiycUTe8D5nyV31kiS+Nr2DzPDcvDcVLVBPH
mGr7CUEqdj3MAcVWGrYFTzXi97GjxsXxqZCLmj4EDtZ+2vjvt1W/xgDXt4PUV/96
dvNAx3ZvqaaUaevMoYrzK7c541yQnmzosfinYBwTC1KsduxVpqnISfr0O+MJrg0d
WOX4evTQ5+/ZAfGSYlKWVkNAj64KIvCsVlPBU9CZ0MQbxOgifNT9v9S7Sf/54GrM
rsd+490euEOGS4E1/VbQF/gZ6MvTYfcE2+s244escztWzeCMGhb3PstheYGb3Lep
ud6fw37JCCPlrh+hnOpx6zf4P1ePVaPt2QIDAQABMA0GCSqGSIb3DQEBBQUAA4IB
AQCoj/sZfrypif6AoLkqg2WimmK2KvWNf4srEVgI8BBIpnQpmvYdMKm4IBta8eWO
E9Sdh2u8dnTpn9TEwK/hJpisRZey7H4pPXde86QHmJF1YjF+gdwgpsayIHsfCYJ9
LJxew68jxO9YANwHy6RlS3c+hcNIWfSMOoct/P6vVkcMKOgA/hiMfHELlMzBK68U
r+Ae7wRjNF4Whbxc6bdTOLocmhOjy6IvPC8x6K5RdOYaxVpRNgUz6WgQUI1gZ3hu
YjSaGdqonttvSXhhSnoQEAHIpxvHq/PjOc5qEnzOt9nlYp3Ohr6WQAZfF3iwdd3l
Q2V76qkXAhIjADC7VpZKJiij
-----END CERTIFICATE-----
KEY
  }
}