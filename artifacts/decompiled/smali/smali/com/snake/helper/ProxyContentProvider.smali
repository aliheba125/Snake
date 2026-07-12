.class public abstract Lcom/snake/helper/ProxyContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snake/helper/ProxyContentProvider$P3;,
        Lcom/snake/helper/ProxyContentProvider$P2;,
        Lcom/snake/helper/ProxyContentProvider$P1;,
        Lcom/snake/helper/ProxyContentProvider$P0;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "_Engine_|_init_process_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class p1, Landroidx/appcompat/view/menu/p3;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p1, "SnakeEngine_client_config"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/p3;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/jv0;->P2(Landroidx/appcompat/view/menu/p3;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "_Engine_|_client_"

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object p3

    invoke-static {p1, p2, p3}, Landroidx/appcompat/view/menu/e9;->d(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
