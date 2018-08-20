# 창업연계공학설계입문

## 스크립트와 가이드

### display_ssh_set.sh

- 디스플레이 사용 설정
- 첫 부팅시에 ssh 사용 가능하도록 설정
- [Download](https://drive.google.com/open?id=1bOmllDNR1gwyJuFK4PyXRwxhVASZbF2B)



### raspbian_setup.sh

- 라즈비안의 초기 사용 환경을 설정
- [Download](https://drive.google.com/open?id=1u4tGgpKT1mwXKfXlY86JYsthGDx4YvjM)



### 내 라즈베리 파이의 무IP 찾기

- 디스플레이를 사용하는 방법

  - 디스플레이에 연결 후 ifconfig를 통해 IP를 확인하세요.

- nmap을 사용하는 방법 

  - 우분투 기준으로 설명합니다.

  - 아래 명령을 통해 nmap을 설치합니다.

  - ```shell
    sudo apt-get -y install nmap
    ```

  - 터미널을 열고 아래 명령을 통해 nm-connection-editor를 실행합니다.

  - ```shell
    nm-connection-editor
    ```

    ![](http://drive.google.com/uc?export=view&id=1nhaJoV7r5aUKvS174r_hE05bJYLpMRng)



  - 위와 같은 창이 뜨면 Wired connection 1을 클릭한 후 아래 설정 버튼을 누릅니다. 아래와 같은 창이 뜨게 됩니다.

    ![](http://drive.google.com/uc?export=view&id=1gZNF1X5CNF4rW0sw-Z_-KHqVpzHgEebL)



  - IPV4 Settings 탭을 누른 후, Method를 사진과 같이 Shared to other computers(다른 컴퓨터와 공유)로 바꾸어 줍니다.

    ![](http://drive.google.com/uc?export=view&id=1q5SmX5ZgPNhlzZ-tEVsrOCCtg6awrf4a)

  - Save를 누르고 나옵니다. 

  - 초기 세팅이 완료된 라즈베리파이를 랜선을 통해 노트북과 연결합니다.

  - 터미널을 열고 아래 명령어를 입력합니다.

  - ```shell
    sudo nmap -sS 10.42.0.1-254
    ```

    ![](http://drive.google.com/uc?export=view&id=1GY_Tv2gm_LecHNnk9FZVnIYtG-uSlv7Y)

  - 위와 같은 결과가 나오게 됩니다. 아래의 Raspberry Pi Foundation이 표시된 부분이 라즈베리파이의 상태를 나타내는 부분이고, IP는 Nmap scan report for 10.42.0.10 이 부분에서 10.42.0.10이 라즈베리파이의 유선 IP가 됩니다. IP는 기기에 따라 달라질 수 있습니다.

  - 아래 명령어를 통해 ssh를 연결합니다.

  - ```shell
    ssh pi@ipaddress (본인의 IP로 바꾸세요.)
    ```

  - ssh 연결 후에 ifconfig 명령을 통해서 무선랜 ip를 알아낼 수 있게 됩니다.