;;; -*- lexical-binding: t -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(deft-directory "/home/wendy/OrgFiles/")
 '(org-agenda-files '("~/WorkOrgs"))
 '(org-capture-templates
   '(("t" "Personal todo" entry (file+olp+datetree +org-capture-todo-file)
      "* TODO %?" :prepend t :jump-to-captured t)
     ("n" "Personal notes" entry (file+headline +org-capture-notes-file "Inbox")
      "* %u %?\12%i\12%a" :prepend t)))
 '(org-directory "~/WorkOrgs"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
