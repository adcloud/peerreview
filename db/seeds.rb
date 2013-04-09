# encoding:utf-8

User.destroy_all()
User.create({ email: 'matthias.luebken@adcloud.com', admin: true})
User.create({ email: 'anna.loew@adcloud.com', admin: true})

Role.destroy_all()
role_dev = Role.create({ name: 'Developer'})
role_po = Role.create({ name: 'Product Owner'})
role_manager = Role.create({ name: 'Manager'})
role_qui = Role.create({ name: 'QuiRe'})


Member.destroy_all()
matthias_1 = Member.create({ email: 'matthias.luebken@adcloud.com', role_id: role_manager.id })
matthias_2 = Member.create({ email: 'matthias.luebken@adcloud.com', role_id: role_manager.id })
matthias_3 = Member.create({ email: 'matthias.luebken@adcloud.com', role_id: role_manager.id })
lukas_po = Member.create({ email: 'lukas.wehn@adcloud.com', role_id: role_po.id })
tim_dev = Member.create({ email: 'tim.schindler@adcloud.com', role_id: role_dev.id })
jan_dev = Member.create({ email: 'jan.pieper@adcloud.com', role_id: role_dev.id })
tj_dev = Member.create({ email: 'tj.gabbour@adcloud.com', role_id: role_dev.id })
lars_dev = Member.create({ email: 'lars.wolff@adcloud.com', role_id: role_dev.id })
martin_dev = Member.create({ email: 'martin.otten@adcloud.com', role_id: role_dev.id })
frank_dev = Member.create({ email: 'frank.muenchmeyer@adcloud.com', role_id: role_dev.id })
alfonz_dev = Member.create({ email: 'alfonz.borsos@adcloud.com', role_id: role_dev.id })
tim_devops = Member.create({ email: 'tim.buchwaldt@adcloud.com', role_id: role_dev.id })
#m13 = Member.create({ email: 'sven.gebhardt@adcloud.com', role_id: role_dev.id })
ralph_dev = Member.create({ email: 'ralph.poellath@adcloud.com', role_id: role_dev.id })
dirk_dev = Member.create({ email: 'dirk.breuer@adcloud.com', role_id: role_dev.id })
sebastian_dev = Member.create({ email: 'sebastian.cohnen@adcloud.com', role_id: role_dev.id })
stephan_dev = Member.create({ email: 'stephan.zeissler@adcloud.com', role_id: role_dev.id })
#m18 = Member.create({ email: 'gabriel.pickard@adcloud.com', role_id: role_dev.id })
ross_dev = Member.create({ email: 'ross.crawford@adcloud.net>', role_id: role_dev.id })
#m20 = Member.create({ email: 'sascha.fassmann@adcloud.com', role_id: role_po.id })
verena_po = Member.create({ email: 'verena.wuerbel@adcloud.com', role_id: role_po.id })
#m22 = Member.create({ email: 'sebastian.lautwein@adcloud.com', role_id: role_po.id })
alwin_dev = Member.create({ email: 'alwin.karabiowski@adcloud.com', role_id: role_dev.id })
waldemar_dev = Member.create({ email: 'waldemar.schwan@adcloud.com', role_id: role_dev.id })
frank_po = Member.create({ email: 'frank.muenchmeyer@adcloud.com', role_id: role_po.id })

Team.destroy_all()
t1 = Team.new( { name: 'Connect'} )
t1.members << [matthias_1, alwin_dev, tim_dev, ralph_dev, dirk_dev, jan_dev, lukas_po]
t1.save 
t2 = Team.new( { name: 'Better Results'} )
t2.members << [matthias_2, stephan_dev, sebastian_dev, tj_dev, waldemar_dev, frank_po, frank_dev  ]
t2.save
t3 = Team.new( { name: 'Product Experience'} )
t3.members << [matthias_3, alfonz_dev, lars_dev, verena_po, martin_dev, ross_dev ]
t3.save 
t4 = Team.new( { name: 'HELP'} )
t3.members << [matthias_3, tim_devops ]
t3.save 


Question.destroy_all()
# Dev => Dev
Question.create({ section: 'Produktivität', text: ' traegt zum Team-Erfolg bei.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Produktivität', text: '  arbeitet effizient.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Verstaendnis', text: '   findet sich schnell zurecht und kann Fragen zuverlaessig beantworten.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Qualität', text: ' schreibt fehlerfreien und nachvollziehbaren Code.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Qualität', text: 's Code reviewe ich gerne.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Qualität', text: ' ist ein Boyscout! Er hinterlaesst Legacy-Code sauberer als vorher?', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Qualität', text: '  schreibt automatisierte Tests falls moeglich.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
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

# Dev => PO
Question.create({ section: 'PO Allgemein', text: ' s UserStories sind SMART.', forrole_id: role_po.id,  fromrole_id: role_dev.id});
Question.create({ section: 'PO Allgemein', text: ' s fachliche Vorgaben verändern sich nicht während des Sprints.', forrole_id: role_po.id, fromrole_id: role_dev.id});
Question.create({ section: 'PO Allgemein', text: ' ist ansprechbar für fachliche Nachfragen während des Sprints.', forrole_id: role_po.id,  fromrole_id: role_dev.id});

# Dev => Manager
Question.create({ section: 'Persönliche Wertschätzung ', text: 'sorgt kontinuierlich dafür, dass sich die Rahmenbedingungen zur Ausübung meiner Aufgaben verbessern. ', forrole_id: role_manager.id, fromrole_id: role_dev.id});
Question.create({ section: 'Entwicklung', text: 'unterstützt mich in der Erreichung meiner Entwicklungsziele.. ', forrole_id: role_manager.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Persönliche Wertschätzung ', text: 'nimmt meine Anregungen ernst. ', forrole_id: role_manager.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Kommunikation ', text: 'ist ansprechbar ', forrole_id: role_manager.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Kommunikation ', text: ' macht die Dringlichkeit von Themen klar. ', forrole_id: role_manager.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Kommunikation ', text: ' informiert mich umfassend.', forrole_id: role_manager.id,  fromrole_id: role_dev.id});
Question.create({ section: 'Organisation', text: ' fördert die Selbstorganisation in den Teams und läßt uns als Team  laufen.', forrole_id: role_manager.id, fromrole_id: role_dev.id});
Question.create({ section: 'Umsetzungsstärke', text: ' setzt meine Vorschläge um', forrole_id: role_manager.id,  fromrole_id: role_dev.id});

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


Review.destroy_all()
Answer.destroy_all()