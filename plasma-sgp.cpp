#include <iostream>
#include <kworkspace.h>

int main()
{
    using namespace KWorkSpace;
    using namespace std;

    ShutdownConfirm confirm = ShutdownConfirm::ShutdownConfirmNo;
    ShutdownType sdtype = ShutdownType::ShutdownTypeLogout;
    ShutdownMode sdmode = ShutdownMode::ShutdownModeForceNow;

    if (canShutDown(confirm, sdtype, sdmode))
    {
        requestShutDown(confirm, sdtype, sdmode);
        cout << "KDE workspace force shutdown request send";
        return 0;
    }

    cout << "KDE workspace cannot be shutdown";
    return 0;
}