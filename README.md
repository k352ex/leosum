# leosum_real

## 개발 환경

- ruby 2.2.1
- rails 4.2.3
- mysql

### mysql 연동

1. `brew install mysql`
2. `mysql -u root`
	```bash
    mysql> # 이런 컨맨드 라인이 나옵니다
    ```
3. `CREATE USER 'leosum_test'@'localhost' IDENTIFIED BY 'leosum';` # 유저 생성
4. `GRANT ALL PRIVILEGES ON * . * TO 'leosum_test'@'localhost';` # 권한 부여
5. `FLUSH PRIVILEGES;` # 최종 확정

* 참고 링크
	- https://gorails.com/deploy/ubuntu/14.04 # installing Mysql

### 주의 사항

1. frontend lib을 사용할시에 꼭 Gem으로 사용해주세요.
	- ex) https://github.com/twbs/bootstrap-sass
2. javascript도 마찬가지 입니다.
3. Gem사용시 리뷰후 사용해주세요.