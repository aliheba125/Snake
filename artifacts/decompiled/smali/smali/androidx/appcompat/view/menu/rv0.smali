.class public Landroidx/appcompat/view/menu/rv0;
.super Landroidx/appcompat/view/menu/kv0;
.source "SourceFile"


# static fields
.field public static final d:Landroidx/appcompat/view/menu/rv0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/rv0;

    const-class v1, Landroidx/appcompat/view/menu/n00;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/rv0;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroidx/appcompat/view/menu/rv0;->d:Landroidx/appcompat/view/menu/rv0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/kv0;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static f()Landroidx/appcompat/view/menu/rv0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/rv0;->d:Landroidx/appcompat/view/menu/rv0;

    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "storage_manager"

    return-object v0
.end method

.method public g(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/n00;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/n00;->x0(Ljava/lang/String;)Landroid/net/Uri;

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

.method public h(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/n00;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/n00;->D0(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/os/storage/StorageVolume;

    return-object p1
.end method
