


# 새로운 repository 생성:

```
- helmcharts-kcmagent (yoonseongduk.github.com/helmcharts-kcmagent  - new repository ) .. org 
- helm-kcmagent       (yoonseongduk.github.com/helm-kcmagent      --- new repository ) .. new
- from: helmcharts-kcmagent --> to: helm-kcmagent
```

# 기존 repository 복제

```
git clone https://github.com/yoonseongduk/helmcharts-kcmagent.git
cd helmcharts-kcmagent
```

# kcm-agent용 새 디렉토리 생성 및 파일 복사

```
==> pwd: ./helmcharts-kcmagent
mkdir -p ../helm-kcmagent/deploy/kcm-agent/
cp -arp ./deploy/kcm-agent/* ../helm-kcmagent/
```


# ubuntu-shell 

```
# helm package ./deploy/kcm-agent/
# --> kcm-agent-0.0.1.tgz 
# helm repo index --url https://yoonseongduk.github.io/helm-kcmagent/ . 
# --> index.yaml 
#
```

# git 초기화 -- power-shell

```
git init
git add .
git commit -m "Initial commit: Add kcm-agent helm charts"
```

# 원격 저장소 연결 및 push -- power-shell

```
git remote add origin https://github.com/yoonseongduk/helm-kcmagent.git
git push -u origin main
```


# git push -u origin main 

```
  --> error 발생시 ## branch 가 master 인경우 ##
# git branch 
master 
# ==> git branch -m master main
# ==> git push -u origin main 
```


# helm repo add 실패시 다음을 적용함. 

```
- GitHub 설정:
    - 브라우저에서 https://github.com/yoonseongduk/helm-charts에 접속.
    -             https://github.com/yoonseongduk/helm-kcmagent
    - Settings > Pages로 이동.
    - "Source"를 main 브랜치로 설정하고, 루트 디렉토리(/ (root))를 선택한 후 Save.
    - 설정 후 제공되는 URL(예: https://yoonseongduk.github.io/helm-charts/)을 확인.

- Helm 저장소 추가:
    helm repo add kcm-agent https://yoonseongduk.github.io/helm-charts/
    
```

### helm repo add 가 정상 동작하려면 다음 url 이 정상이어야 한다. 

```

https://yoonseongduk.github.io/helm-charts/
https://yoonseongduk.github.io/helm-kcmagent/
https://yoonseongduk.github.io/helmcharts-kcmagent/

```
