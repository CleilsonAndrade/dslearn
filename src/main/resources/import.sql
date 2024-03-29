INSERT INTO tb_user (name, email, password) VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Cleilson', 'cleilson@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('BootCamp  HTML', 'https://image.com', 'https://image-gray.com');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha do curso', 1, 'https://image.com', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas duvidas', 2, 'https://image.com', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives para a turma', 3, 'https://image.com', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Material', 1, 'https://image.com', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'Começando', 2, 'https://image.com', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Finalizando', 3, 'https://image.com', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1,  TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1,  TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do Capitulo 1', 1, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('', 'https://video.com', 1);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do Capitulo 1', 2, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('', 'https://video.com', 2);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do Capitulo 1', 3, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('', 'https://video.com', 3);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do Capitulo 1', 4, 1);
INSERT INTO tb_task (description, question_Count, approval_Count, weight, due_Date, id) VALUES ('Fazer tarefa', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T13:00:00Z', 4);

INSERT INTO tb_lesson_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lesson_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback', TIMESTAMP WITH TIME ZONE '2020-11-20T14:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback', TIMESTAMP WITH TIME ZONE '2020-11-20T15:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback', TIMESTAMP WITH TIME ZONE '2020-11-20T16:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://entrega-1.com', TIMESTAMP WITH TIME ZONE '2020-11-20T16:00:00Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Tópico 1', 'Conteúdo tópico', TIMESTAMP WITH TIME ZONE '2020-11-20T16:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Tópico 1', 'Conteúdo tópico', TIMESTAMP WITH TIME ZONE '2020-11-20T16:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Tópico 1', 'Conteúdo tópico', TIMESTAMP WITH TIME ZONE '2020-11-20T16:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Tópico 1', 'Conteúdo tópico', TIMESTAMP WITH TIME ZONE '2020-11-20T16:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Tópico 1', 'Conteúdo tópico', TIMESTAMP WITH TIME ZONE '2020-11-20T16:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Tópico 1', 'Conteúdo tópico', TIMESTAMP WITH TIME ZONE '2020-11-20T16:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o PC', TIMESTAMP WITH TIME ZONE '2020-11-20T16:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo!', TIMESTAMP WITH TIME ZONE '2020-11-20T16:00:00Z', 1, 1);

INSERT INTO tb_reply_like (reply_id, user_id) VALUES (1, 1);