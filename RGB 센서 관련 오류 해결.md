## RGB 센서 오류 해결

### 아직 RGB 센서를 조립하지 않아 RGB 모듈 관련된 코드에서 오류가 발생하게 됩니다. 이를 해결하기 위해 아래 두 가지 방법 중 하나를 택해서 사용할 수 있습니다.

#### 소스코드의 의존성 문제가 있으니 꼭 최신 소스를 다운로드 받은 후 사용해주세요.



### 1. 파일 교체

#### 파일 다운로드

[car.py](http://drive.google.com/uc?export=view&id=1wgkK9THNvltOTwxrq71eKghZ-PmtiSLg)



#### 파일 붙여넣기

소스코드 폴더 안의 car.py를 위에서 다운로드한 파일로 교체하면 됩니다.



### 2. 직접 주석처리

#### 주석처리 하는 법

최신 소스코드 기준입니다. 

Car 클래스의 생성자 내부의 72~74번 줄, 79번 줄을 주석처리 하면 됩니다.

```python
             # ================================================================
             # RGB MODULE DRIVER INITIALIZE
             # ================================================================
-            self.color_getter = RGB_Sensor.TCS34725()
-            if self.color_getter.get_exception_occur():
-                print("[ERRNO-101] There is a problem with RGB_Sensor(TCS34725)")
+            # self.color_getter = RGB_Sensor.TCS34725()
+            # if self.color_getter.get_exception_occur():
+            #     print("[ERRNO-101] There is a problem with RGB_Sensor(TCS34725)")

             # ================================================================
             # DISABLE RGB MODULE INTERRUPTION
             # ================================================================
-            self.color_getter.set_interrupt(False)
+            # self.color_getter.set_interrupt(False)

             # ================================================================
             # PCA9685(PWM 16-ch Extension Board) MODULE WAKEUP
```

주석처리의 과정은 위와 같습니다.

```python
# ================================================================
# RGB MODULE DRIVER INITIALIZE
# ================================================================
# self.color_getter = RGB_Sensor.TCS34725()
# if self.color_getter.get_exception_occur():
#     print("[ERRNO-101] There is a problem with RGB_Sensor(TCS34725)")

# ================================================================
# DISABLE RGB MODULE INTERRUPTION
# ================================================================
# self.color_getter.set_interrupt(False)
```

주석처리한 결과는 위와 같습니다.

직접 주석처리한 학생들도 올바르게 주석처리 되었는지 확인 부탁드립니다.



### 위 과정을 완료한 후

혹시 새로 git clone을 받아 새로운 소스를 가져왔다면 config파일이 존재하지 않습니다. 원래 사용하던 소스코드 폴더에서 config 파일을 복사해서 가져오거나, 새롭게 캘리브레이션 과정을 수행해야 합니다. 파일 복사 혹은 캘리브레이션을 수행하지 않는다면 에러가 발생하니 꼭 수행해주세요.