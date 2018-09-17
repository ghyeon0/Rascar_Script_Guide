## SSH KEY를 사용해서 깃허브 편하게 사용하기

### !!!KMU_SW 와이파이에서는 동작하지 않는 것을 확인했습니다. 사용에 주의하세요!!!



### 매번 깃허브 아이디와 비밀번호를 입력하는 불편함을 줄여봅시다.

#### SSH Key 생성

```bash
ssh-keygen
```

- 위 명령어를 사용합니다.

- Enter file in which to save the key (/home/pi/.ssh/id_rsa): 가 뜨면 엔터를 눌러줍니다.

- Enter passphrase (empty for no passphrase): 가 뜨면 엔터

- Enter same passphrase again: 에서도 엔터를 눌러줍니다.

  ![](http://drive.google.com/uc?export=view&id=1Fct_95j-j0sBDYlERmIxwPq_Ffr9kGYq) 

- 위와 비슷한 결과가 나와야 합니다.



  ```bash
  ls -al ~/.ssh
  ```

- 위 명령어를 입력했을 때 id_rsa 파일과 id_rsa.pub 파일이 나와야 합니다.

- 위 두 파일 중에서 우리에게 필요한 파일은 id_rsa.pub 파일입니다.



- ```bash
  cat ~/.ssh/id_rsa.pub
  ```

- 위 명령을 통해 id_rsa.pub의 값을 읽어옵니다.

- ssh-rsa로 시작하여 pi@raspberrypi(계정명을 변경하지 않았다면)으로 끝나는 긴 문자열이 나옵니다. 그것을 전부 복사합니다.

- 깃허브에 접속하여 Settings에 들어갑니다

  ![](http://drive.google.com/uc?export=view&id=1MUuICmGzokKsMS0bIljHuakAV6IOPHm2) 

- SSH and GPG keys를 클릭합니다.

  ![](http://drive.google.com/uc?export=view&id=1oqHSwJBgOU5NebS-zUAeXrpY4hvoMnfb) 

- 초록색의 New SSH Key를 클릭합니다.

- Title에는 본인이 구별할 수 있는 이름, Key에는 위에서 복사한 문자열을 붙여넣고 Add SSH Key 버튼을 눌러서 마무리합니다.



#### 사용

- ##### 새로운 레포지토리

  ![](http://drive.google.com/uc?export=view&id=1-jz2Di6bfh-onECOb5U2G96JVOnebBv1) 

  - SSH 버튼을 누르면 링크가 변경됩니다. 아래에 나오는 가이드대로 따라하면 됩니다.

- ##### 이미 있는 레포지토리

  - Clone or download 버튼을 누르고 Use SSH 버튼을 누르면 링크가 변경됩니다. 그 링크를 이용하여 clone 하면 됩니다.