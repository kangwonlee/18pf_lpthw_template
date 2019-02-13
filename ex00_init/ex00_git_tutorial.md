# `git` 명령 일람

참고문헌 : https://education.github.com/git-cheat-sheet-education.pdf

## 윈도우용 설치 파일 링크

https://git-scm.com/download/win

## 설정

|            |                                                |
|:----------:|:----------------------------------------------:|
| 사용자 이름 | `git config user.name "<사용자 이름>"`          |
| 사용자 email | `git config user.email "<사용자 email>"`      |
| 컬러 설정 | `git config color.ui auto`                       |

## 초기화

|            |                                                |
|:----------:|:----------------------------------------------:|
| 현재 작업 폴더 확인 | `pwd` |
| 현재 작업 폴더 내용 확인 | `ls` (LS 의 소문자) |
| 현재 작업 폴더에 새 폴더 만들기 | `mkdir <새 폴더 이름>` |
| 특정 폴더로 작업 폴더 변경 | `cd <특정 폴더 이름>` |
| 현재의 작업 폴더에서 빈 저장소 시작 | `git init` |
| 원격 저장소를 현재 작업 폴더 아래 복사 | `git clone <원격 저장소 url>`      |

## 수정사항 등록

![Git Data Transport Commands](https://images.osteele.com/2008/git-transport.png)

|            |                                                |
|:----------:|:----------------------------------------------:|
| 현재 지역 저장소 상태 확인 | `git status` |
| 지역 저장소의 현재 작업 폴더에 있는 어떤 `file` 을 다음 `commit` (등록) 대상으로 지정 | `git add <file>` |
| 지정 상태 해제 (변경 사항은 유지) | `git reset <file>` |
| 지정되지 않은 변경 사항 중 확인 | `git diff` |
| 등록 대기중인 지정 사항 확인 | `git diff --staged` |
| 지정된 변경사항 등록 | `git commit -m "<등록 사항 설명>"` |
