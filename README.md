# Docker 교육
MAY2017

### Dockefile 버전관리
- `basic` : `centos:latest`
- `runfail` : Dockerfile의 `CMD ["bin/bash"]` 자동 exit version
- `jdk` : Dockerfile `openjdk` 자동 설치 버전
- `tomcat` : Dockerfile `tomcat` 자동 설치 버전
- `autorun` : Dockerfile `tomcat` 자동 설치 후 지정포트로 WAS 구동

### 빌드 배포
```
# Dockerfile 이 있는 폴더에서
$> docker build -t ${TAGNAME} .
```

### `clean-docker.sh` 사용하기
`clean-docker.sh` 는 한번에 `동일한 이름을 가진` docker-container 와 docker-image 를 지워주는 스크립트
```
$> clean-docker ${CONTAINER-IMAGE NAME}
```

### `autobuild-docker.sh` 사용하기
`autobuild-docker.sh` 는 `docker build` 와 `docker run` 을 합친 스크립트. 아직 파라미터 처리 안되고 그냥 이미지와 동일한 이름을 가지는 컨테이너를 run 만 해줌. 옵션이 `-d`, `--name` 만  적용되었다는 이야기
```
# Dockerfile 이 있는 폴더에서
$> sh autobuild-docker.sh ${CONTAINER-IMAGE NAME}
```

### History
- 26MAY2017 : 초안작성
