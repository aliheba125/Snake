.class public Landroidx/appcompat/view/menu/oz;
.super Landroidx/appcompat/view/menu/j8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/oz$u;,
        Landroidx/appcompat/view/menu/oz$v;,
        Landroidx/appcompat/view/menu/oz$s;,
        Landroidx/appcompat/view/menu/oz$p;,
        Landroidx/appcompat/view/menu/oz$o;,
        Landroidx/appcompat/view/menu/oz$j;,
        Landroidx/appcompat/view/menu/oz$n;,
        Landroidx/appcompat/view/menu/oz$m;,
        Landroidx/appcompat/view/menu/oz$d;,
        Landroidx/appcompat/view/menu/oz$z;,
        Landroidx/appcompat/view/menu/oz$a0;,
        Landroidx/appcompat/view/menu/oz$h;,
        Landroidx/appcompat/view/menu/oz$w;,
        Landroidx/appcompat/view/menu/oz$x;,
        Landroidx/appcompat/view/menu/oz$c0;,
        Landroidx/appcompat/view/menu/oz$d0;,
        Landroidx/appcompat/view/menu/oz$f;,
        Landroidx/appcompat/view/menu/oz$e0;,
        Landroidx/appcompat/view/menu/oz$g0;,
        Landroidx/appcompat/view/menu/oz$q;,
        Landroidx/appcompat/view/menu/oz$b;,
        Landroidx/appcompat/view/menu/oz$c;,
        Landroidx/appcompat/view/menu/oz$h0;,
        Landroidx/appcompat/view/menu/oz$i;,
        Landroidx/appcompat/view/menu/oz$g;,
        Landroidx/appcompat/view/menu/oz$a;,
        Landroidx/appcompat/view/menu/oz$r;,
        Landroidx/appcompat/view/menu/oz$t;,
        Landroidx/appcompat/view/menu/oz$e;,
        Landroidx/appcompat/view/menu/oz$b0;,
        Landroidx/appcompat/view/menu/oz$k;,
        Landroidx/appcompat/view/menu/oz$l;,
        Landroidx/appcompat/view/menu/oz$y;,
        Landroidx/appcompat/view/menu/oz$f0;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    const-string v1, "account"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/j8;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/Object;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/nz;->b:Landroidx/appcompat/view/menu/go0$e;

    sget-object v1, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    const-string v2, "account"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    const-string p1, "account"

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j8;->l(Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/view/menu/j8;->j()V

    new-instance v0, Landroidx/appcompat/view/menu/oz$u;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$u;-><init>()V

    const-string v1, "getPassword"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$v;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$v;-><init>()V

    const-string v1, "getUserData"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$s;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$s;-><init>()V

    const-string v1, "getAuthenticatorTypes"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$p;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$p;-><init>()V

    const-string v1, "getAccountsForPackage"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$o;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$o;-><init>()V

    const-string v1, "getAccountsByTypeForPackage"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$j;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$j;-><init>()V

    const-string v1, "getAccountByTypeAndFeatures"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$n;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$n;-><init>()V

    const-string v1, "getAccountsByFeatures"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$m;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$m;-><init>()V

    const-string v1, "getAccountsAsUser"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$d;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$d;-><init>()V

    const-string v1, "addAccountExplicitly"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$z;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$z;-><init>()V

    const-string v1, "removeAccountAsUser"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$a0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$a0;-><init>()V

    const-string v1, "removeAccountExplicitly"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$h;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$h;-><init>()V

    const-string v1, "copyAccountToUser"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$w;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$w;-><init>()V

    const-string v1, "invalidateAuthToken"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$x;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$x;-><init>()V

    const-string v1, "peekAuthToken"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$c0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$c0;-><init>()V

    const-string v1, "setAuthToken"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$d0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$d0;-><init>()V

    const-string v1, "setPassword"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$f;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$f;-><init>()V

    const-string v1, "clearPassword"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$e0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$e0;-><init>()V

    const-string v1, "setUserData"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$g0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$g0;-><init>()V

    const-string v1, "updateAppPermission"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$q;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$q;-><init>()V

    const-string v1, "getAuthToken"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$b;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$b;-><init>()V

    const-string v1, "addAccount"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$c;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$c;-><init>()V

    const-string v1, "addAccountAsUser"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$h0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$h0;-><init>()V

    const-string v1, "updateCredentials"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$i;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$i;-><init>()V

    const-string v1, "editProperties"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$g;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$g;-><init>()V

    const-string v1, "confirmCredentialsAsUser"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$a;-><init>()V

    const-string v1, "accountAuthenticated"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$r;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$r;-><init>()V

    const-string v1, "getAuthTokenLabel"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$t;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$t;-><init>()V

    const-string v1, "getPackagesAndVisibilityForAccount"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$e;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$e;-><init>()V

    const-string v1, "addAccountExplicitlyWithVisibility"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$b0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$b0;-><init>()V

    const-string v1, "setAccountVisibility"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$k;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$k;-><init>()V

    const-string v1, "getAccountVisibility"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$l;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$l;-><init>()V

    const-string v1, "getAccountsAndVisibilityForPackage"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$y;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$y;-><init>()V

    const-string v1, "registerAccountListener"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz$f0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz$f0;-><init>()V

    const-string v1, "unregisterAccountListener"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    return-void
.end method
