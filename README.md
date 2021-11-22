# R_study


### 2019-1학기에 수강한 에너지시스템 최적화 과제 및 실습


#### 1)과제1
-1.1 1부터 100 까지 무작위 숫자를 만들어 data_1 에 저장하시오. 

![image](https://user-images.githubusercontent.com/72932028/142889633-c573736b-2daa-4131-9490-bde910f6ee44.png)

![image](https://user-images.githubusercontent.com/72932028/142889653-eadffc82-27a1-44a1-a627-0c08cc5f67ba.png)

-2.1 병합정렬 (Merge Sort) 프로그램을 작성하시오.

![image](https://user-images.githubusercontent.com/72932028/142889729-418becc0-fecb-40c7-856c-4dc85a4d44e4.png)

![image](https://user-images.githubusercontent.com/72932028/142889740-4028a55b-4e10-4e69-b080-d2954291d75b.png)


-2.2 data_1 을 병합 정렬 프로그램을 이용하여 오름차순 내림차순 으로 각각 정렬하시오. (결과만 출력) 

=> 오름차순

![image](https://user-images.githubusercontent.com/72932028/142889817-6490803a-c48f-433e-8641-7d96e13364ac.png)

![image](https://user-images.githubusercontent.com/72932028/142889834-e7847cee-2d81-472e-8e16-734891764184.png)


=> 내림차순

![image](https://user-images.githubusercontent.com/72932028/142889871-a993f55f-2a3c-48ba-a9cd-a2ba4a3dfc73.png)

![image](https://user-images.githubusercontent.com/72932028/142889880-955ae993-2704-454b-ad16-7235e147445e.png)


-Selection, Insertion, Bubble, Quick, Merge Sort의 다음 4가지 데이터를 이용하여 각각 속도를 비교하시오. (오름차순 정렬: 실행 시간을 테이블로 정리)

3.1. a1=1:1000

3.2. a2 = 1000:1

3.3. a3 = c(1000:501,1:500)

3.4. a4 = c (2:1000, 1)


![image](https://user-images.githubusercontent.com/72932028/142890017-2983c4c7-d4c6-4adf-b5d6-0029bf8f467b.png)

![image](https://user-images.githubusercontent.com/72932028/142890033-a91e7369-f1fd-4ab2-870c-e1ff075ca0f0.png)


#### 2)과제2
-1. x 가 0 ~ 100 사이 y 가 0 ~ 100 사이 값을 갖는 무작위 좌표를 10개 생성하여 data.frame 에 저장하시오.

![image](https://user-images.githubusercontent.com/72932028/142890226-5a3994b3-ed4a-4818-b229-b7e22a5c24ab.png)

![image](https://user-images.githubusercontent.com/72932028/142890237-a86ee5de-0649-45bf-b99a-479ebb2df8b4.png)


-2. 1.에서 생성한 좌표간의 거리를 계산하여 10 * 10 matrix 에 저장하시오. (단 자기자신과의 거리는 0으로 표기하시오)

![image](https://user-images.githubusercontent.com/72932028/142890305-c0fa59cb-3a21-4140-814c-8e49e45b16e0.png)

![image](https://user-images.githubusercontent.com/72932028/142890321-5a37186d-4b6c-4fc7-9daf-4c9da3c52f12.png)


-3. 모든 좌표를 단 1회씩 방문하는 여행자가 있다고 할 때 무작위 순서를 만드는 방법을 이용하여 10개의 이동 순서를 만드시오. (10개의 이동순서를 출력하시오) (여행자는 반드시 가장 마지막에 출발지로 돌아와야 합니다.)

![image](https://user-images.githubusercontent.com/72932028/142890376-1610c5b5-ed41-4b5f-9188-86e9915f09f7.png)

![image](https://user-images.githubusercontent.com/72932028/142890385-002c8825-6c3e-4b7a-9e2b-bd810023095d.png)


-4. 위의 각 이동순서에 대한 총 이동거리를 구하고 이를 data.frame에 저장하시오. (data.frame 의 이름, x1, x2, x3, ..., x10, distance) (10개의 행 11개의 열: 각 행이 이동순서를 나타냄)

 ![image](https://user-images.githubusercontent.com/72932028/142890421-67350a42-e50f-46d2-93fb-ff48a64c763b.png)
 
 ![image](https://user-images.githubusercontent.com/72932028/142890449-77395a5a-74b1-40bd-857f-60fd057e95da.png)


-5. 위에서 만든 데이터 프레임에서 이동거리가 짧은 순서대로 10개의 행을 정렬하는 프로그램을 만드시오. 

![image](https://user-images.githubusercontent.com/72932028/142890555-63c0bebf-87a1-4ea5-9696-d23feea4b844.png)

![image](https://user-images.githubusercontent.com/72932028/142890580-6dcb2d34-b71e-4a50-96ba-4fb0bf9245f9.png)




#### 3)bubble, insert, quick, selection
