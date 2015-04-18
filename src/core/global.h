#ifndef GLOBAL_H
#define GLOBAL_H

#include <QString>
#include <QSettings>

class GlobalConfig : public QSettings
{
public:
    GlobalConfig();
    void init();

    static QString ProjectPath;
    static QString BuildPath;
    static QString QtPath;
    static QString DeployPath;
    static QString FtpPath;
    static QString LogPath;

};

namespace GlobalMethod
{
    void crash();
}

extern GlobalConfig NBSetting;

#endif // GLOBAL_H

