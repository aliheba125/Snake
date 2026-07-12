.class public Lcom/snake/helper/Native;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroid/app/Activity;Ljava/lang/String;IJZ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/snake/helper/Native;->b(Landroid/app/Activity;Ljava/lang/String;IJZ)V

    return-void
.end method

.method public static native ac(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public static native aior(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public static native awl(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public static synthetic b(Landroid/app/Activity;Ljava/lang/String;IJZ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/appcompat/view/menu/vx;->f(Landroid/app/Activity;Ljava/lang/String;IJZ)V

    return-void
.end method

.method public static native chl([B)Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public static native djp(I)[B
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public static native eio()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public static gcuid(I)I
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-lez p0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x4e1f

    if-le p0, v0, :cond_1

    return p0

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->p()I

    move-result v0

    if-ne p0, v0, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->u()Landroidx/appcompat/view/menu/qv0;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/qv0;->r(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    return p0

    :cond_2
    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->K2()I

    move-result p0

    :cond_3
    return p0
.end method

.method public static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static native i(I)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public static native ic(Landroid/content/Context;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public static il(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2
    invoke-static {}, Landroidx/appcompat/view/menu/z10;->d()Landroidx/appcompat/view/menu/z10;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/z10;->g(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static il(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/appcompat/view/menu/z10;->d()Landroidx/appcompat/view/menu/z10;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/z10;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native ilil(I)Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public static logIn(Ljava/lang/String;J)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p1, p2, v0}, Lcom/snake/helper/Native;->logIn(Ljava/lang/String;JZ)V

    return-void
.end method

.method public static logIn(Ljava/lang/String;JZ)V
    .locals 9
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logIn: called withResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/vx;->g(Ljava/lang/String;J)V

    .line 3
    invoke-static {}, Landroidx/appcompat/view/menu/vx;->e()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v3, 0x3

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-wide v1, p1

    move v7, p3

    .line 4
    invoke-static/range {v1 .. v7}, Landroidx/appcompat/view/menu/vx;->c(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v5

    .line 6
    new-instance v1, Landroidx/appcompat/view/menu/ne0;

    move-object v2, v1

    move-object v3, v0

    move-object v4, p0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/ne0;-><init>(Landroid/app/Activity;Ljava/lang/String;IJZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static native pjowqpxe(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public static native update(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method
