# encoding:utf-8
Role.destroy_all()
role_dev = Role.create({ name: 'Developer'})
role_po = Role.create({ name: 'Product Owner'})
role_manager = Role.create({ name: 'Manager'})
role_arch = Role.create({ name: 'Architect'})
role_qui = Role.create({ name: 'QuiRe'})


Member.destroy_all()
m1 = Member.create({ email: 'matthias.luebken@adcloud.com', role_id: role_manager.id })
m2 = Member.create({ email: 'timo.derstappen@adcloud.com', role_id: role_arch.id })
m3 = Member.create({ email: 'lukas.wehn@adcloud.com', role_id: role_po.id })
m4 = Member.create({ email: 'tim.schindler@adcloud.com', role_id: role_dev.id })
m5 = Member.create({ email: 'jan.pieper@adcloud.com', role_id: role_dev.id })
m6 = Member.create({ email: 'tj.gabbour@adcloud.com', role_id: role_dev.id })
m7 = Member.create({ email: 'waldemar.schwan@adcloud.com', role_id: role_dev.id })
m8 = Member.create({ email: 'lars.wolff@adcloud.com', role_id: role_dev.id })
m9 = Member.create({ email: 'martin.otten@adcloud.com', role_id: role_dev.id })
m10 = Member.create({ email: 'frank.muenchmeyer@adcloud.com', role_id: role_dev.id })
m11 = Member.create({ email: 'alfonz.borsos@adcloud.com', role_id: role_dev.id })
m12 = Member.create({ email: 'tim.buchwaldt@adcloud.com', role_id: role_dev.id })
m13 = Member.create({ email: 'sven.gebhardt@adcloud.com', role_id: role_dev.id })
m14 = Member.create({ email: 'otto.poellath@adcloud.com', role_id: role_dev.id })
m15 = Member.create({ email: 'dirk.breuer@adcloud.com', role_id: role_dev.id })
m16 = Member.create({ email: 'sebastian.cohnen@adcloud.com', role_id: role_dev.id })
m17 = Member.create({ email: 'stephan.zeissler@adcloud.com', role_id: role_dev.id })
m18 = Member.create({ email: 'gabriel.pickard@adcloud.com', role_id: role_dev.id })
m19 = Member.create({ email: 'ross.crawford@adcloud.net>', role_id: role_dev.id })
m20 = Member.create({ email: 'sascha.fassmann@adcloud.com', role_id: role_po.id })
m21 = Member.create({ email: 'verena.wuerbel@adcloud.com', role_id: role_po.id })
m22 = Member.create({ email: 'sebastian.lautwein@adcloud.com', role_id: role_po.id })
m23 = Member.create({ email: 'lukas.wehn@adcloud.com', role_id: role_po.id })
m24 = Member.create({ email: 'alwin.karabiowski@adcloud.com', role_id: role_dev.id })
m25 = Member.create({ email: 'waldemar.schwan@adcloud.com', role_id: role_dev.id })
m26 = Member.create({ email: 'frank.muenchmeyer@adcloud.com', role_id: role_po.id })
m26 = Member.create({ email: 'anna.loew@adcloud.com',  role_id: role_dev.id })


Team.destroy_all()
t1 = Team.new( { name: 'Connect'} )
t1.members << [m1, m2, m24, m4, m14, m15, m5, m3]
t1.save 
t2 = Team.new( { name: 'Better Results'} )
t2.members << [m1, m2, m17, m16, m6, m18, m25, m26, m10  ]
t2.save
t3 = Team.new( { name: 'Product Experience'} )
t3.members << [m1, m2, m11, m8, m21 ]
t3.save 


Question.destroy_all()
Question.create({ section: 'Produktivitaet', text: ' traegt zum Team-Erfolg bei.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Produktivitaet', text: '  arbeitet effizient.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Verstaendnis', text: '   findet sich schnell zurecht und kann Fragen zuverlaessig beantworten.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Qualitaet', text: ' schreibt fehlerfreien und nachvollziehbaren Code.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Qualitaet', text: 's Code reviewe ich gerne.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Qualitaet', text: ' ist ein Boyscout! Er hinterlaesst Legacy-Code sauberer als vorher?', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Qualitaet', text: '  schreibt automatisierte Tests falls moeglich.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'MVP', text: ' s Umsetzung passt zu den fachlichen Anforderungen.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'MVP', text: ' s Umsetzung passt zu den fachlichen Anforderungen.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'MVP', text: ' s Umsetzung passt zu den fachlichen Anforderungen.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'MVP', text: '  sucht nach einer moeglichst einfachen Loesung.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'MVP', text: '  holt sich schnell Feedback ein. Z.B. vom PO oder Anwendern mit Mockups oder Prototypen.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'MVP', text: ' beachtet Sprintziele und Umfang der Userstories.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Technischen Exzellenz', text: ' erweitert kontinuierlich seine Faehigkeiten/Kenntnisse.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Technischen Exzellenz', text: ' ist der Spezialist in einem oder mehreren Bereichen.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Technischen Exzellenz', text: ' ist Ansprechpartner fuer einen oder mehrere Bereichen und viele Kollegen machen davon Gebrauch.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Unternehmerischen Weitsicht', text: ' stellt die Aufgaben in den Kontext von Adcloud und CTOs Ideen.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Unternehmerischen Weitsicht', text: '  versteht die Beduerfnisse der Anwender.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Zusammenarbeit', text: ' bringt gute Stimmung in das Team.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Zusammenarbeit', text: ' ist mir gegenueber zuverlaessig.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Wissensweitergabe', text: ' ist ansprechbar und hilft kollegial bei Problemen weiter.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Wissensweitergabe', text: ' ist ein guter Pair-Partner beim Pair-Programming.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: ' loest Teamkonflikte.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: ' verbessert den Scrum Prozess.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: ' verbessert die Zusammenarbeit in DEV.', forrole_id: role_dev.id, fromrole_id: role_dev.id});

Question.create({ section: 'PO Allgemein', text: ' s UserStories sind SMART.', forrole_id: role_po.id,  fromrole_id: role_dev.id});
Question.create({ section: 'PO Allgemein', text: ' s fachliche Vorgaben verändern sich nicht während des Sprints.', forrole_id: role_po.id, fromrole_id: role_dev.id});
Question.create({ section: 'PO Allgemein', text: ' ist ansprechbar für fachliche Nachfragen während des Sprints.', forrole_id: role_po.id,  fromrole_id: role_dev.id});

Question.create({ section: 'Persönliche Wertschätzung ', text: 'sorgt kontinuierlich dafür, dass sich die Rahmenbedingungen zur Ausübung meiner Aufgaben verbessern. ', forrole_id: role_manager.id, fromrole_id: role_dev.id});
Question.create({ section: 'Entwicklung', text: 'unterstützt mich in der Erreichung meiner Entwicklungsziele.. ', forrole_id: role_manager.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Persönliche Wertschätzung ', text: 'nimmt meine Anregungen ernst. ', forrole_id: role_manager.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Kommunikation ', text: 'ist ansprechbar ', forrole_id: role_manager.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Kommunikation ', text: ' macht die Dringlichkeit von Themen klar. ', forrole_id: role_manager.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Kommunikation ', text: ' informiert mich umfassend.', forrole_id: role_manager.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Organisation', text: ' fördert die Selbstorganisation in den Teams und läßt uns als Team  laufen.', forrole_id: role_manager.id, fromrole_id: role_dev.id});
Question.create({ section: 'Umsetzungsstärke', text: ' setzt meine Vorschläge um', forrole_id: role_manager.id,  fromrole_id: role_dev.id});

Question.create({ section: 'Organisation', text: ' s technische Ideen sind nachvollziehbar.', forrole_id: role_arch.id, fromrole_id: role_dev.id});
Question.create({ section: 'Persönliche Wertschätzung', text: '  nimmt meine technischen Ideen und Anregungen ernst.', forrole_id: role_arch.id, fromrole_id: role_dev.id});
Question.create({ section: 'Entwicklung', text: '  lässt mir genügend Freiraum eigene technische Ideen zu entwicklen.', forrole_id: role_arch.id, fromrole_id: role_dev.id});
Question.create({ section: 'Kommunikation', text: '  macht die Roadmap transparent.', forrole_id: role_arch.id, fromrole_id: role_dev.id});

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

Question.create({ section: 'Produktivität', text: '  trägt zum Team-Erfolg bei.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Produktivität', text: '  arbeitet effizient.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Verständnis', text: '  findet sich schnell zurecht und kann Fragen zuverlässig beantworten.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Qualitaet', text: '  schreibt fehlerfreien und nachvollziehbaren Code.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Qualitaet', text: ' s Code reviewe ich gerne.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Qualitaet', text: '  ist ein Boyscout! Er hinterlässt Legacy-Code sauberer als vorher?', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Qualiteat', text: '  schreibt automatisierte Tests falls möglich.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Minimal Viable Product / MVP', text: ' s Umsetzung passt zu den fachlichen Anforderungen.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Minimal Viable Product / MVP', text: ' sucht nach einer möglichst einfachen Lösung.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Minimal Viable Product / MVP', text: '  holt sich schnell Feedback ein. Z.B. vom PO oder Anwendern mit Mockups oder Prototypen.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Minimal Viable Product / MVP', text: '  beachtet Sprintziele und Umfang der Userstories.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Technischen Exzellenz', text: '  erweitert kontinuierlich seine Fähigkeiten/Kenntnisse.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Technischen Exzellenz', text: '  ist der Spezialist in einem oder mehreren Bereichen.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Technischen Exzellenz', text: '  ist Ansprechpartner für einen oder mehrere Bereichen und viele Kollegen machen davon Gebrauch.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Unternehmerischen Weitsicht', text: '" stellt die Aufgaben in den Kontext von Adcloud und Olis Ideen.
"', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Unternehmerischen Weitsicht', text: ' versteht die Bedürfnisse der Anwender.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Zusammenarbeit', text: '  bringt gute Stimmung in das Team.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Zusammenarbeit', text: '  ist mir gegenüber zuverlässig.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Wissensweitergabe', text: '  ist ansprechbar und hilft kollegial bei Problemen weiter.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Wissensweitergabe', text: '  ist ein guter Pair-Partner beim Pair-Programming.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: '  löst Teamkonflikte.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: '  verbessert den Scrum Prozess.', forrole_id: role_dev.id, fromrole_id: role_arch.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: '  verbessert die Zusammenarbeit in DEV.', forrole_id: role_dev.id, fromrole_id: role_arch.id});


Review.destroy_all()