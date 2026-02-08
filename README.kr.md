# Claude Code 슬래시 커맨드 튜토리얼

Claude Code 안에서 바로 슬래시 커맨드를 배우는 인터랙티브 튜토리얼입니다.

터미널 전환도, 외부 도구도 필요 없습니다. `/tutorial`만 입력하면 실습하며 배울 수 있습니다.

## 특징

- **인터랙티브**: 설명 → 문법 → 예시 → 실습 → 확인 → 팁 순서로 하나씩 배움
- **이중 언어**: 영어(`en`)와 한국어(`kr`) 지원
- **27개 커맨드**를 7개 모듈 + 치트시트로 구성
- **자기 주도**: 건너뛰기, 원하는 모듈로 점프, 언제든 종료 가능

## 요구사항

- [Claude Code](https://code.claude.com) 설치 및 인증 완료

## 설치

```bash
git clone <repo-url> ~/claude-code-tutorial
cd ~/claude-code-tutorial
chmod +x install.sh && ./install.sh
```

`~/.claude/skills/tutorial`에서 레포 디렉토리로의 심볼릭 링크가 생성됩니다.

## 사용법

Claude Code를 실행하고 입력하세요:

| 커맨드 | 설명 |
|--------|------|
| `/tutorial` | 시작 (언어 선택) |
| `/tutorial en` | 영어로 시작 |
| `/tutorial kr` | 한국어로 시작 |
| `/tutorial kr 3` | 모듈 3으로 점프 (한국어) |
| `/tutorial en 2` | 모듈 2로 점프 (영어) |
| `/tutorial cheatsheet` | 빠른 참조 카드 |

## 커리큘럼

| 모듈 | 주제 | 커맨드 |
|------|------|--------|
| 1 | 첫 걸음 | `/help`, `/status`, `/clear` |
| 2 | 프로젝트 설정 | `/init`, `/memory`, `/config`, `/permissions` |
| 3 | 모델과 모드 | `/model`, `/plan`, `/vim` |
| 4 | 컨텍스트와 사용량 | `/compact`, `/context`, `/cost`, `/stats` |
| 5 | 세션 관리 | `/resume`, `/rewind`, `/rename`, `/copy` |
| 6 | 개발자 도구 | `/doctor`, `/terminal-setup`, `/theme`, `/review` |
| 7 | 통합 기능 | `/mcp`, `/hooks`, `/login`, `/logout`, `/bug` |
| - | 치트시트 | 전체 커맨드 참조 |

## 제거

```bash
cd ~/claude-code-tutorial
./uninstall.sh
```

## 기여

PR 환영합니다! 콘텐츠를 추가하거나 개선하려면:

1. 모듈 파일은 `en/` (영어)과 `kr/` (한국어)에 있습니다
2. 설명/문법/예시/실습/확인/팁 패턴을 따르세요
3. 대화체로 친근하게 작성하세요
4. Claude Code에서 `/tutorial`로 테스트하세요

## 라이선스

MIT
