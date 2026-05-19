-- 기존 테이블이 혹시 있다면 정리
DROP TABLE IF EXISTS `ai_test_log`;

-- AI 연구소 컨셉의 테스트 테이블 생성
CREATE TABLE `ai_test_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 검증용 샘플 데이터 삽입
INSERT INTO `ai_test_log` (`id`, `project_name`, `status`) 
VALUES (1, '라인 테스트', '본 문장이 보이면 DB 연동 성공');