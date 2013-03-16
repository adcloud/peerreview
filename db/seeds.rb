Role.destroy_all()
role_dev = Role.create({ name: 'Developer'})
role_po = Role.create({ name: 'Product Owner'})
role_manager = Role.create({ name: 'Manager'})
role_arch = Role.create({ name: 'Architect'})

Member.destroy_all()
m1 = Member.create({ email: 'matthias.luebken@adcloud.com', role_id: role_manager.id })
m2 = Member.create({ email: 'timo.derstappen@adcloud.com', role_id: role_arch.id })
m3 = Member.create({ email: 'lukas.wehn@adcloud.com', role_id: role_po.id })
m4 = Member.create({ email: 'tim.schindler@adcloud.com', role_id: role_dev.id })
m5 = Member.create({ email: 'jan.pieper@adcloud.com', role_id: role_dev.id })
m6 = Member.create({ email: 'tj.gabbour@adcloud.com', role_id: role_dev.id })

Team.destroy_all()
t = Team.new( { name: 'A-Team'} )
t.members << [m1, m2, m3, m4 ]
t.save

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
Question.create({ section: 'Unternehmerischen Weitsicht', text: ' stellt die Aufgaben in den Kontext von Adcloud und Olis Ideen.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Unternehmerischen Weitsicht', text: '  versteht die Beduerfnisse der Anwender.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Zusammenarbeit', text: ' bringt gute Stimmung in das Team.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Zusammenarbeit', text: ' ist mir gegenueber zuverlaessig.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Wissensweitergabe', text: ' ist ansprechbar und hilft kollegial bei Problemen weiter.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Wissensweitergabe', text: ' ist ein guter Pair-Partner beim Pair-Programming.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: ' loest Teamkonflikte.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: ' verbessert den Scrum Prozess.', forrole_id: role_dev.id, fromrole_id: role_dev.id});
Question.create({ section: 'Scrum/Dev-Organisation', text: ' verbessert die Zusammenarbeit in DEV..', forrole_id: role_dev.id, fromrole_id: role_dev.id});
