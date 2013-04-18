# encoding:utf-8

User.destroy_all()
User.create({ email: 'name.surname@domain.com', admin: true})

Role.destroy_all()
role_dev = Role.create({ name: 'Developer'})
role_po = Role.create({ name: 'Product Owner'})
role_manager = Role.create({ name: 'Manager'})


Member.destroy_all()
manager_1 = Member.create({ email: 'name.surname@domain.com', role_id: role_manager.id })
manager_2 = Member.create({ email: 'name.surname@domain.com', role_id: role_manager.id })
po_1 = Member.create({ email: 'name.surname@domain.com', role_id: role_po.id })
po_2 = Member.create({ email: 'name.surname@domain.com', role_id: role_po.id })
dev_1 = Member.create({ email: 'name.surname@domain.com', role_id: role_dev.id })
dev_2 = Member.create({ email: 'name.surname@domain.com', role_id: role_dev.id })
dev_3 = Member.create({ email: 'name.surname@domain.com', role_id: role_dev.id })
dev_4 = Member.create({ email: 'name.surname@domain.com', role_id: role_dev.id })
dev_5 = Member.create({ email: 'name.surname@domain.com', role_id: role_dev.id })
dev_6 = Member.create({ email: 'name.surname@domain.com', role_id: role_dev.id })

Team.destroy_all()
t1 = Team.new( { name: 'A Team'} )
t1.members << [manager_1, po_1, dev_1, dev_2, dev_3]
t1.save 
t2 = Team.new( { name: 'B Team'} )
t1.members << [manager_2, po_2, dev_4, dev_5, dev_6]
t2.save



Question.destroy_all()
# Dev => Dev
Question.create({ section: 'Produktivität', text: ' trägt zum Team-Erfolg bei.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Produktivität', text: ' arbeitet effizient.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Verständnis', text: ' findet sich schnell zurecht und kann Fragen zuverlässig beantworten.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Qualität', text: ' schreibt fehlerfreien und nachvollziehbaren Code.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Qualität', text: 's Code reviewe ich gerne.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Qualität', text: ' ist ein Boyscout! Er hinterlässt Legacy-Code sauberer als vorher.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Qualität', text: '  schreibt automatisierte Tests falls möglich.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'MVP', text: ' s Umsetzung passt zu den fachlichen Anforderungen.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'MVP', text: '  sucht nach einer möglichst einfachen Lösung.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'MVP', text: '  holt sich schnell Feedback ein. Z.B. vom PO oder Anwendern mit Mockups oder Prototypen.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'MVP', text: ' beachtet Sprintziele und Umfang der Userstories.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Technische Exzellenz', text: ' erweitert kontinuierlich seine Fähigkeiten/Kenntnisse.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Technische Exzellenz', text: ' ist der Spezialist in einem oder mehreren Bereichen.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Technische Exzellenz', text: ' ist Ansprechpartner für einen oder mehrere Bereichen und ich mache davon Gebrauch.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Unternehmerische Weitsicht', text: ' stellt die Aufgaben in den Kontext von Adcloud und den Roadmap Ideen.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Unternehmerische Weitsicht', text: '  versteht die Bedürfnisse der Anwender.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Zusammenarbeit', text: ' bringt gute Stimmung in das Team.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Zusammenarbeit', text: ' ist mir gegenüber zuverlässig.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Wissensweitergabe', text: ' ist ansprechbar und hilft kollegial bei Problemen weiter.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Wissensweitergabe', text: ' ist ein guter Pair-Partner beim Pair-Programming.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: ' löst Teamkonflikte.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: ' verbessert den Scrum Prozess.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: ' verbessert die Zusammenarbeit in DEV.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Other Feedback', text: '<freetext>', forrole_id: role_dev.id, fromrole_id: role_dev.id});

# Dev => PO
Question.create({ section: 'PO Allgemein', text: ' s UserStories sind SMART.', forrole_id: role_po.id,  fromrole_id: role_dev.id});
Question.create({ section: 'PO Allgemein', text: ' s fachliche Vorgaben verändern sich nicht während des Sprints.', forrole_id: role_po.id, fromrole_id: role_dev.id});
Question.create({ section: 'PO Allgemein', text: ' ist ansprechbar für fachliche Nachfragen während des Sprints.', forrole_id: role_po.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Other Feedback', text: '<freetext>', forrole_id: role_po.id, fromrole_id: role_dev.id});

# Dev => Manager
Question.create({ section: 'Persönliche Wertschätzung ', text: 'sorgt kontinuierlich dafür, dass sich die Rahmenbedingungen zur Ausübung meiner Aufgaben verbessern. ', forrole_id: role_manager.id, fromrole_id: role_dev.id});
Question.create({ section: 'Entwicklung', text: 'unterstützt mich in der Erreichung meiner Entwicklungsziele. ', forrole_id: role_manager.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Persönliche Wertschätzung ', text: 'nimmt meine Anregungen ernst. ', forrole_id: role_manager.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Kommunikation ', text: 'ist ansprechbar.', forrole_id: role_manager.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Kommunikation ', text: ' macht die Dringlichkeit von Themen klar. ', forrole_id: role_manager.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Kommunikation ', text: ' informiert mich umfassend.', forrole_id: role_manager.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Organisation', text: ' fördert die Selbstorganisation in den Teams und läßt uns als Team  laufen.', forrole_id: role_manager.id, fromrole_id: role_dev.id});
Question.create({ section: 'Umsetzungsstärke', text: ' setzt meine Vorschläge um.', forrole_id: role_manager.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Other Feedback', text: '<freetext>', forrole_id: role_manager.id, fromrole_id: role_dev.id});

# Manager => Dev
Question.create({ section: 'Verständis', text: 'findet sich schnell zurecht und kann Fragen zuverlässig beantworten.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Minimal Viable Product / MVP', text: 's Umsetzung passt zu den fachlichen Anforderungen.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Minimal Viable Product / MVP', text: ' sucht nach einer möglichst einfachen Lösung.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Minimal Viable Product / MVP', text: ' holt sich schnell Feedback ein. Z.B. vom PO oder Anwendern mit Mockups oder Prototypen.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Minimal Viable Product / MVP', text: ' beachtet Sprintziele und Umfang der Userstories.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Minimal Viable Product / MVP', text: ' erweitert kontinuierlich seine Fähigkeiten/Kenntnisse.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Technischen Exzellenz', text: 'ist der Spezialist in einem oder mehreren Bereichen.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Technischen Exzellenz', text: 'ist Ansprechpartner für einen oder mehrere Bereichen und viele Kollegen machen davon Gebrauch.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Technischen Exzellenz', text: 'findet sich schnell zurecht und kann Fragen zuverlässig beantworten.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Unternehmerischen Weitsicht', text: 'stellt die Aufgaben in den Kontext von Adcloud und CTOs Ideen.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Unternehmerischen Weitsicht', text: 'versteht die Bedürfnisse der Anwender.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Zusammenarbeit', text: ' bringt gute Stimmung in das Team.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Zusammenarbeit', text: ' ist mir gegenüber zuverlässig.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Wissensweitergabe', text: ' ist ansprechbar und hilft kollegial bei Problemen weiter.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Wissensweitergabe', text: 'findet sich schnell zurecht und kann Fragen zuverlässig beantworten.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: 'ist ein guter Pair-Partner beim Pair-Programming.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: 'löst Teamkonflikte.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: ' verbessert den Scrum Prozess.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: '  verbessert die Zusammenarbeit in DEV.', forrole_id: role_dev.id, fromrole_id: role_manager.id});
Question.create({ section: 'Other Feedback', text: '<freetext>', forrole_id: role_dev.id, fromrole_id: role_manager.id});

# PO => Dev
Question.create({ section: 'Produktivität', text: ' trägt zum Team-Erfolg bei.', forrole_id: role_dev.id, fromrole_id: role_po.id});
Question.create({ section: 'Produktivität', text: ' arbeitet effizient.', forrole_id: role_dev.id, fromrole_id: role_po.id});
Question.create({ section: 'Verständnis', text: '  findet sich schnell zurecht und kann Fragen zuverlässig beantworten.', forrole_id: role_dev.id, fromrole_id: role_po.id});
Question.create({ section: 'Minimal Viable Product / MVP', text: '  holt sich schnell Feedback ein. Z.B. vom PO oder Anwendern mit Mockups oder Prototypen.', forrole_id: role_dev.id, fromrole_id: role_po.id});
Question.create({ section: 'Minimal Viable Product / MVP', text: 's Umsetzung passt zu den fachlichen Anforderungen.', forrole_id: role_dev.id, fromrole_id: role_po.id});
Question.create({ section: 'Minimal Viable Product / MVP', text: ' sucht nach einer möglichst einfachen Lösung.', forrole_id: role_dev.id, fromrole_id: role_po.id});
Question.create({ section: 'Minimal Viable Product / MVP', text: '  beachtet Sprintziele und Umfang der Userstories.', forrole_id: role_dev.id, fromrole_id: role_po.id});
Question.create({ section: 'Unternehmerische Weitsicht', text: ' stellt die Aufgaben in den Kontext von Adcloud und CTOs Ideen.', forrole_id: role_dev.id, fromrole_id: role_po.id});
Question.create({ section: 'Unternehmerische Weitsicht', text:  'versteht die Bedürfnisse der Anwender.', forrole_id: role_dev.id, fromrole_id: role_po.id});
Question.create({ section: 'Zusammenarbeit', text: ' bringt gute Stimmung in das Team.', forrole_id: role_dev.id, fromrole_id: role_po.id});
Question.create({ section: 'Zusammenarbeit', text: ' ist mir gegenüber zuverlässig.', forrole_id: role_dev.id, fromrole_id: role_po.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: ' löst Teamkonflikte.', forrole_id: role_dev.id, fromrole_id: role_po.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: ' verbessert den Scrum Prozess.', forrole_id: role_dev.id, fromrole_id: role_po.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: ' verbessert die Zusammenarbeit in DEV.', forrole_id: role_dev.id, fromrole_id: role_po.id});
Question.create({ section: 'Other Feedback', text: '<freetext>', forrole_id: role_dev.id, fromrole_id: role_po.id});


Review.destroy_all()
Answer.destroy_all()