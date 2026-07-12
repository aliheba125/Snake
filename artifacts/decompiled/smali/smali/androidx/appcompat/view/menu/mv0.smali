.class public Landroidx/appcompat/view/menu/mv0;
.super Landroidx/appcompat/view/menu/kv0;
.source "SourceFile"


# static fields
.field public static final d:Landroidx/appcompat/view/menu/mv0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/mv0;

    const-class v1, Landroidx/appcompat/view/menu/i00;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/mv0;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroidx/appcompat/view/menu/mv0;->d:Landroidx/appcompat/view/menu/mv0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/kv0;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static h()Landroidx/appcompat/view/menu/mv0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/mv0;->d:Landroidx/appcompat/view/menu/mv0;

    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "job_manager"

    return-object v0
.end method

.method public f(Ljava/lang/String;I)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/i00;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroidx/appcompat/view/menu/i00;->B0(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/i00;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/i00;->O(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public i(Ljava/lang/String;I)Landroidx/appcompat/view/menu/a70;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/i00;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroidx/appcompat/view/menu/i00;->E(Ljava/lang/String;II)Landroidx/appcompat/view/menu/a70;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public j(Landroid/app/job/JobInfo;)Landroid/app/job/JobInfo;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/i00;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/i00;->i0(Landroid/app/job/JobInfo;I)Landroid/app/job/JobInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
