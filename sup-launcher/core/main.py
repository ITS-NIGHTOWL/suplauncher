import sys
import webbrowser
from os import listdir
from os.path import isfile, join
import os
 
from PySide2.QtUiTools import QUiLoader
from PySide2.QtWidgets import QApplication, QPushButton, QLineEdit, QListWidget, QLabel, QCheckBox
from PySide2 import QtXml
from PySide2.QtCore import QFile, QObject
 
def resource_path(relative_path):
    if hasattr(sys, '_MEIPASS'):
        return os.path.join(sys._MEIPASS, relative_path)
    return os.path.join(os.path.abspath("."), relative_path)


class Form(QObject):
 
    def __init__(self, ui_file, parent=None):
        super(Form, self).__init__(parent)
        ui_file = QFile(ui_file)
        ui_file.open(QFile.ReadOnly)
 
        loader = QUiLoader()
        self.window = loader.load(ui_file)
        ui_file.close()
 
        self.dupelist = self.window.findChild(QListWidget, 'dupe_list')
        self.dupesearch = self.window.findChild(QLineEdit, 'gmodinstalllocation_I')
        self.window.findChild(QPushButton, 'gmodinstalllocation_B').clicked.connect(self.dupefinder)

#Main Servers Buttons
        #Join Danktown Buttom
        btn = self.window.findChild(QPushButton, 'danktown_B')
        btn.clicked.connect(self.join_danktown)
        #Join C18 Buttom
        btn = self.window.findChild(QPushButton, 'c18_B')
        btn.clicked.connect(self.join_c18)
        #Join Zombies Buttom
        btn = self.window.findChild(QPushButton, 'zombies_B')
        btn.clicked.connect(self.join_zombies)
        btn = self.window.findChild(QPushButton, 'darkrprules_B')
        btn.clicked.connect(self.darkrp_rules)

#Other Servers Buttons
        #Join Military Buttom
        btn = self.window.findChild(QPushButton, 'military_B')
        btn.clicked.connect(self.join_military)
        #Join Clone Wars Buttom
        btn = self.window.findChild(QPushButton, 'clonewars_B')
        btn.clicked.connect(self.join_clonewars)
        #Join Clone Wars Events Buttom
        btn = self.window.findChild(QPushButton, 'clonewarsevents_B')
        btn.clicked.connect(self.join_clonewarsevents)
        #Open Rules For MilitaryRP
        btn = self.window.findChild(QPushButton, 'militaryrprules_B')
        btn.clicked.connect(self.militaryrp_rules)
        #Open Rules For CloneWarsRP
        btn = self.window.findChild(QPushButton, 'clonewarsrprules_B')
        btn.clicked.connect(self.clonewarsrp_rules)

        #SUP LAUNCHER update page
        btn = self.window.findChild(QPushButton, 'updatepage_B')
        btn.clicked.connect(self.launcher_update_page)

        self.window.show()
 
    def dupefinder(self):
        self.dupelist.clear()
        #Mainly a styling preference so people dont get confused looking at error file path
        if sys.platform == 'win32':
            dupefilepath1 = '\data\\advdupe2'
            dupefilepath2 = '\garrysmod\data\\advdupe2'

        else:
            dupefilepath1 = '/data/advdupe2'
            dupefilepath2 = '/garrysmod/data/advdupe2'      

                 
        #Checks if it includes another garrys mod directory, as I could see this being a common mistake by people
        if 'garrysmod' in self.dupesearch.text():
            try:
                onlyfiles = [f for f in listdir(self.dupesearch.text() + dupefilepath1) if isfile(join(self.dupesearch.text() + dupefilepath1, f))]
                self.dupelist.addItems(onlyfiles)
            except OSError:
                self.dupelist.clear()
                self.dupelist.addItems([f'No Dupe Files Found In Directory: {self.dupesearch.text()}' + dupefilepath1])

        else:
            try:
                onlyfiles = [f for f in listdir(self.dupesearch.text() + dupefilepath2) if isfile(join(self.dupesearch.text() + dupefilepath2, f))]
                self.dupelist.addItems(onlyfiles)
            except OSError:
                self.dupelist.clear()
                self.dupelist.addItems([f'No Dupe Files Found In Directory: {self.dupesearch.text()}' + dupefilepath2])

    #Main Functions
    def join_danktown(self):
        webbrowser.open('steam://connect/RP.SuperiorServers.co:27015')
    def join_c18(self):
        webbrowser.open('steam://connect/RP2.SuperiorServers.co:27015')
    def join_zombies(self):
        webbrowser.open('steam://connect/ZRP.SuperiorServers.co:27015')
    def darkrp_rules(self):
        webbrowser.open('https://superiorservers.co/darkrp/rules')


    #Others Functions
    def join_military(self):
        webbrowser.open('steam://connect/MilRP.SuperiorServers.co:27015')
    def join_clonewars(self):
        webbrowser.open('steam://connect/CWRP.SuperiorServers.co:27015')
    def join_clonewarsevents(self):
        webbrowser.open('steam://connect/CWRP2.SuperiorServers.co:27015')
    def militaryrp_rules(self):
        webbrowser.open('https://superiorservers.co/ssrp/milrp/rules')
    def clonewarsrp_rules(self):
        webbrowser.open('https://superiorservers.co/ssrp/cwrp/rules')
    def launcher_update_page(self):
        webbrowser.open('https://github.com/itsretr0n/suplauncher')      


if __name__ == '__main__':
    app = QApplication(sys.argv)
    form = Form(resource_path('window.ui'))
    sys.exit(app.exec_())