.class public Landroidx/appcompat/view/menu/ku0;
.super Landroidx/appcompat/view/menu/qx;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/uc1;


# static fields
.field public static final synthetic X:I


# instance fields
.field public final T:Z

.field public final U:Landroidx/appcompat/view/menu/ac;

.field public final V:Landroid/os/Bundle;

.field public final W:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLandroidx/appcompat/view/menu/ac;Landroid/os/Bundle;Landroidx/appcompat/view/menu/zx$a;Landroidx/appcompat/view/menu/zx$b;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/qx;-><init>(Landroid/content/Context;Landroid/os/Looper;ILandroidx/appcompat/view/menu/ac;Landroidx/appcompat/view/menu/zx$a;Landroidx/appcompat/view/menu/zx$b;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ku0;->T:Z

    iput-object p4, p0, Landroidx/appcompat/view/menu/ku0;->U:Landroidx/appcompat/view/menu/ac;

    iput-object p5, p0, Landroidx/appcompat/view/menu/ku0;->V:Landroid/os/Bundle;

    invoke-virtual {p4}, Landroidx/appcompat/view/menu/ac;->g()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ku0;->W:Ljava/lang/Integer;

    return-void
.end method

.method public static l0(Landroidx/appcompat/view/menu/ac;)Landroid/os/Bundle;
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ac;->f()Landroidx/appcompat/view/menu/lu0;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ac;->g()Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.google.android.gms.signin.internal.clientRequestedAccount"

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ac;->a()Landroid/accounts/Account;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v0, :cond_0

    const-string p0, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p0, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string p0, "com.google.android.gms.signin.internal.offlineAccessRequested"

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.serverClientId"

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v1, p0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.android.gms.signin.internal.logSessionId"

    invoke-virtual {v1, p0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    invoke-virtual {v1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method


# virtual methods
.method public final A()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ku0;->U:Landroidx/appcompat/view/menu/ac;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ac;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->y()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ku0;->V:Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ku0;->U:Landroidx/appcompat/view/menu/ac;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ac;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.signin.internal.realClientPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ku0;->V:Landroid/os/Bundle;

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method public final e()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final i(Landroidx/appcompat/view/menu/vc1;)V
    .locals 6

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/ku0;->U:Landroidx/appcompat/view/menu/ac;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ac;->b()Landroid/accounts/Account;

    move-result-object v2

    const-string v3, "<<default account>>"

    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->y()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/cx0;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/cx0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/cx0;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    new-instance v4, Landroidx/appcompat/view/menu/ae1;

    iget-object v5, p0, Landroidx/appcompat/view/menu/ku0;->W:Ljava/lang/Integer;

    invoke-static {v5}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v2, v5, v3}, Landroidx/appcompat/view/menu/ae1;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->D()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/yc1;

    new-instance v3, Landroidx/appcompat/view/menu/id1;

    invoke-direct {v3, v0, v4}, Landroidx/appcompat/view/menu/id1;-><init>(ILandroidx/appcompat/view/menu/ae1;)V

    invoke-virtual {v2, v3, p1}, Landroidx/appcompat/view/menu/yc1;->u2(Landroidx/appcompat/view/menu/id1;Landroidx/appcompat/view/menu/vc1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :try_start_1
    new-instance v2, Landroidx/appcompat/view/menu/ld1;

    new-instance v3, Landroidx/appcompat/view/menu/ef;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1}, Landroidx/appcompat/view/menu/ef;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {v2, v0, v3, v1}, Landroidx/appcompat/view/menu/ld1;-><init>(ILandroidx/appcompat/view/menu/ef;Landroidx/appcompat/view/menu/ce1;)V

    invoke-interface {p1, v2}, Landroidx/appcompat/view/menu/vc1;->v(Landroidx/appcompat/view/menu/ld1;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ku0;->T:Z

    return v0
.end method

.method public final p()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/z7$d;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/z7$d;-><init>(Landroidx/appcompat/view/menu/z7;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/z7;->m(Landroidx/appcompat/view/menu/z7$c;)V

    return-void
.end method

.method public final synthetic s(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/yc1;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Landroidx/appcompat/view/menu/yc1;

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/yc1;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/yc1;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
