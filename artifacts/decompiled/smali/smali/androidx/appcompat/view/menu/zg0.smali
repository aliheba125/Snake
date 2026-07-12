.class public abstract Landroidx/appcompat/view/menu/zg0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/appcompat/view/menu/z6;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Landroidx/appcompat/view/menu/y3;->b(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-boolean p1, p0, Landroidx/appcompat/view/menu/z6;->m:Z

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Landroidx/appcompat/view/menu/z6;->o:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static b(Landroid/content/pm/ApplicationInfo;)V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->f()Z

    move-result v1

    const-string v2, "/system/framework/org.apache.http.legacy.boot.jar"

    if-eqz v1, :cond_1

    const-string v1, "/system/framework/org.apache.http.legacy.jar"

    invoke-static {v1}, Landroidx/appcompat/view/menu/lr;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    return-void
.end method

.method public static c(Landroidx/appcompat/view/menu/u6$b;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ActivityInfo;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6$b;->f:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/zg0;->a(Landroidx/appcompat/view/menu/z6;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroidx/appcompat/view/menu/u6$b;->f:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/u6$d;->d:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/x6;->v2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object p0, p0, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    invoke-static {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/zg0;->d(Landroidx/appcompat/view/menu/u6;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static d(Landroidx/appcompat/view/menu/u6;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ApplicationInfo;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->E:Landroid/content/pm/ApplicationInfo;

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/zg0;->a(Landroidx/appcompat/view/menu/z6;Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->r()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->G:Ljava/lang/String;

    iget-object v1, p0, Landroidx/appcompat/view/menu/u6;->E:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->r()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroidx/appcompat/view/menu/u6;->E:Landroid/content/pm/ApplicationInfo;

    :cond_1
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Landroidx/appcompat/view/menu/u6;->E:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v2}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/u6;->w:Landroid/os/Bundle;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :cond_2
    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p3}, Landroidx/appcompat/view/menu/lv0;->i(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object p1, p0, Landroidx/appcompat/view/menu/u6;->K:Landroidx/appcompat/view/menu/j50;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/j50;->b(I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Landroidx/appcompat/view/menu/lv0;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v2}, Landroidx/appcompat/view/menu/x6;->v2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object p1, p0, Landroidx/appcompat/view/menu/u6;->x:Landroidx/appcompat/view/menu/y6;

    iget p1, p1, Landroidx/appcompat/view/menu/y6;->n:I

    iput p1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Landroidx/appcompat/view/menu/z3;->b:Landroidx/appcompat/view/menu/go0$b;

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Landroidx/appcompat/view/menu/z3;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Landroidx/appcompat/view/menu/z3;->d:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    iget-object p0, p0, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-static {p0, p3}, Landroidx/appcompat/view/menu/lv0;->l(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    sget-object p1, Landroidx/appcompat/view/menu/b4;->d:Landroidx/appcompat/view/menu/go0$b;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1, p0}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    sget-object p0, Landroidx/appcompat/view/menu/b4;->b:Landroidx/appcompat/view/menu/go0$b;

    if-eqz p0, :cond_6

    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    sget-object p0, Landroidx/appcompat/view/menu/b4;->d:Landroidx/appcompat/view/menu/go0$b;

    if-eqz p0, :cond_7

    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    sget-object p0, Landroidx/appcompat/view/menu/b4;->c:Landroidx/appcompat/view/menu/go0$b;

    if-eqz p0, :cond_8

    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    invoke-static {v1}, Landroidx/appcompat/view/menu/zg0;->b(Landroid/content/pm/ApplicationInfo;)V

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static e(Landroidx/appcompat/view/menu/u6$e;I)Landroid/content/pm/InstrumentationInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    iget-object p0, p0, Landroidx/appcompat/view/menu/u6$e;->f:Landroid/content/pm/InstrumentationInfo;

    return-object p0

    :cond_1
    new-instance p1, Landroid/content/pm/InstrumentationInfo;

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6$e;->f:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/u6$d;->d:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    return-object p1
.end method

.method public static f(Landroidx/appcompat/view/menu/u6;IJJLandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/PackageInfo;
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6;->E:Landroid/content/pm/ApplicationInfo;

    invoke-static {p6, v0}, Landroidx/appcompat/view/menu/zg0;->a(Landroidx/appcompat/view/menu/z6;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroidx/appcompat/view/menu/u6;->D:I

    iput v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/u6;->F:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appcompat/view/menu/u6;->A:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    iget v2, p0, Landroidx/appcompat/view/menu/u6;->H:I

    iput v2, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    invoke-static {p0, p1, p6, p7}, Landroidx/appcompat/view/menu/zg0;->d(Landroidx/appcompat/view/menu/u6;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-wide p2, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide p4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iget-object p2, p0, Landroidx/appcompat/view/menu/u6;->t:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/appcompat/view/menu/u6;->t:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iget-object p3, p0, Landroidx/appcompat/view/menu/u6;->t:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    :cond_1
    and-int/lit16 p2, p1, 0x100

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    new-array p2, p3, [I

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->gids:[I

    :cond_2
    and-int/lit16 p2, p1, 0x4000

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroidx/appcompat/view/menu/u6;->I:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_0

    :cond_3
    move p2, p3

    :goto_0
    if-lez p2, :cond_4

    new-array p2, p2, [Landroid/content/pm/ConfigurationInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    iget-object p4, p0, Landroidx/appcompat/view/menu/u6;->I:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_4
    iget-object p2, p0, Landroidx/appcompat/view/menu/u6;->J:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_1

    :cond_5
    move p2, p3

    :goto_1
    if-lez p2, :cond_6

    new-array p2, p2, [Landroid/content/pm/FeatureInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    iget-object p4, p0, Landroidx/appcompat/view/menu/u6;->J:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_6
    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_8

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    iget-object p2, p0, Landroidx/appcompat/view/menu/u6;->m:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_8

    new-array p4, p2, [Landroid/content/pm/ActivityInfo;

    move p5, p3

    move v2, p5

    :goto_2
    if-ge p5, p2, :cond_7

    iget-object v3, p0, Landroidx/appcompat/view/menu/u6;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$b;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, p1, p6, p7}, Landroidx/appcompat/view/menu/zg0;->c(Landroidx/appcompat/view/menu/u6$b;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    aput-object v3, p4, v2

    add-int/lit8 p5, p5, 0x1

    move v2, v4

    goto :goto_2

    :cond_7
    invoke-static {p4, v2}, Landroidx/appcompat/view/menu/r4;->f([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ActivityInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    :cond_8
    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_a

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    iget-object p2, p0, Landroidx/appcompat/view/menu/u6;->n:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_a

    new-array p4, p2, [Landroid/content/pm/ActivityInfo;

    move p5, p3

    move v2, p5

    :goto_3
    if-ge p5, p2, :cond_9

    iget-object v3, p0, Landroidx/appcompat/view/menu/u6;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$b;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, p1, p6, p7}, Landroidx/appcompat/view/menu/zg0;->c(Landroidx/appcompat/view/menu/u6$b;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    aput-object v3, p4, v2

    add-int/lit8 p5, p5, 0x1

    move v2, v4

    goto :goto_3

    :cond_9
    invoke-static {p4, v2}, Landroidx/appcompat/view/menu/r4;->f([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ActivityInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :cond_a
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_c

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    iget-object p2, p0, Landroidx/appcompat/view/menu/u6;->p:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_c

    new-array p4, p2, [Landroid/content/pm/ServiceInfo;

    move p5, p3

    move v2, p5

    :goto_4
    if-ge p5, p2, :cond_b

    iget-object v3, p0, Landroidx/appcompat/view/menu/u6;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$k;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, p1, p6, p7}, Landroidx/appcompat/view/menu/zg0;->j(Landroidx/appcompat/view/menu/u6$k;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    aput-object v3, p4, v2

    add-int/lit8 p5, p5, 0x1

    move v2, v4

    goto :goto_4

    :cond_b
    invoke-static {p4, v2}, Landroidx/appcompat/view/menu/r4;->f([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ServiceInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :cond_c
    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_f

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    iget-object p2, p0, Landroidx/appcompat/view/menu/u6;->o:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_f

    new-array p4, p2, [Landroid/content/pm/ProviderInfo;

    move p5, p3

    move v2, p5

    :goto_5
    if-ge p5, p2, :cond_e

    iget-object v3, p0, Landroidx/appcompat/view/menu/u6;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$i;

    invoke-static {v3, p1, p6, p7}, Landroidx/appcompat/view/menu/zg0;->i(Landroidx/appcompat/view/menu/u6$i;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_d

    add-int/lit8 v4, v2, 0x1

    aput-object v3, p4, v2

    move v2, v4

    :cond_d
    add-int/lit8 p5, p5, 0x1

    goto :goto_5

    :cond_e
    invoke-static {p4, v2}, Landroidx/appcompat/view/menu/r4;->f([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ProviderInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :cond_f
    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_10

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object p2, p0, Landroidx/appcompat/view/menu/u6;->q:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_10

    new-array p4, p2, [Landroid/content/pm/InstrumentationInfo;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    move p4, p3

    :goto_6
    if-ge p4, p2, :cond_10

    iget-object p5, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object p6, p0, Landroidx/appcompat/view/menu/u6;->q:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroidx/appcompat/view/menu/u6$e;

    invoke-static {p6, p1}, Landroidx/appcompat/view/menu/zg0;->e(Landroidx/appcompat/view/menu/u6$e;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    :cond_10
    and-int/lit16 p2, p1, 0x1000

    if-eqz p2, :cond_12

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object p2, p0, Landroidx/appcompat/view/menu/u6;->r:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_11

    new-array p4, p2, [Landroid/content/pm/PermissionInfo;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    move p4, p3

    :goto_7
    if-ge p4, p2, :cond_11

    iget-object p5, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object p6, p0, Landroidx/appcompat/view/menu/u6;->r:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroidx/appcompat/view/menu/u6$g;

    invoke-static {p6, p1}, Landroidx/appcompat/view/menu/zg0;->h(Landroidx/appcompat/view/menu/u6$g;I)Landroid/content/pm/PermissionInfo;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_7

    :cond_11
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object p2, p0, Landroidx/appcompat/view/menu/u6;->t:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_12

    new-array p4, p2, [Ljava/lang/String;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    new-array p4, p2, [I

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    move p4, p3

    :goto_8
    if-ge p4, p2, :cond_12

    iget-object p5, p0, Landroidx/appcompat/view/menu/u6;->t:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    iget-object p6, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object p5, p6, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_8

    :cond_12
    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->r()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p4, p0, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-virtual {p2, p4, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-object p2, v1

    :goto_9
    if-eqz p2, :cond_13

    iget-object p4, p2, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    if-eqz p4, :cond_13

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    :cond_13
    and-int/lit8 p4, p1, 0x40

    if-eqz p4, :cond_15

    if-nez p2, :cond_14

    iget-object p4, p0, Landroidx/appcompat/view/menu/u6;->u:[Landroid/content/pm/Signature;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_a

    :cond_14
    iget-object p4, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :cond_15
    :goto_a
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->e()Z

    move-result p4

    if-eqz p4, :cond_17

    const/high16 p4, 0x8000000

    and-int/2addr p1, p4

    if-eqz p1, :cond_17

    if-nez p2, :cond_16

    sget-object p1, Landroidx/appcompat/view/menu/ch0$a;->b:Landroidx/appcompat/view/menu/go0$b;

    iget-object p0, p0, Landroidx/appcompat/view/menu/u6;->v:Landroidx/appcompat/view/menu/u6$m;

    iget-object p0, p0, Landroidx/appcompat/view/menu/u6$m;->m:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v1, p0}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Landroidx/appcompat/view/menu/mu0;->b:Landroidx/appcompat/view/menu/go0$a;

    new-array p1, p3, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/go0$a;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SigningInfo;

    iput-object p0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_b

    :cond_16
    iget-object p0, p2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    iput-object p0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    :cond_17
    :goto_b
    return-object v0
.end method

.method public static g(Landroidx/appcompat/view/menu/y6;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/PackageInfo;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    if-eqz v1, :cond_1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move v2, p1

    move-object v7, p2

    move v8, p3

    :try_start_0
    invoke-static/range {v1 .. v8}, Landroidx/appcompat/view/menu/zg0;->f(Landroidx/appcompat/view/menu/u6;IJJLandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public static h(Landroidx/appcompat/view/menu/u6$g;I)Landroid/content/pm/PermissionInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    iget-object p0, p0, Landroidx/appcompat/view/menu/u6$g;->f:Landroid/content/pm/PermissionInfo;

    return-object p0

    :cond_1
    new-instance p1, Landroid/content/pm/PermissionInfo;

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6$g;->f:Landroid/content/pm/PermissionInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/u6$d;->d:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    return-object p1
.end method

.method public static i(Landroidx/appcompat/view/menu/u6$i;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ProviderInfo;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6$i;->f:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/zg0;->a(Landroidx/appcompat/view/menu/z6;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/content/pm/ProviderInfo;

    iget-object v2, p0, Landroidx/appcompat/view/menu/u6$i;->f:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/u6$d;->d:Landroid/os/Bundle;

    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/appcompat/view/menu/x6;->v2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_2

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    :cond_2
    iget-object p0, p0, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    invoke-static {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/zg0;->d(Landroidx/appcompat/view/menu/u6;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static j(Landroidx/appcompat/view/menu/u6$k;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ServiceInfo;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6$k;->f:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/zg0;->a(Landroidx/appcompat/view/menu/z6;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroidx/appcompat/view/menu/u6$k;->f:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/u6$d;->d:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/x6;->v2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object p0, p0, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    invoke-static {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/zg0;->d(Landroidx/appcompat/view/menu/u6;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static k(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/x6;->z2(Ljava/lang/String;)Landroidx/appcompat/view/menu/y6;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/a5;->b:Landroidx/appcompat/view/menu/go0$a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$a;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    sget-object v1, Landroidx/appcompat/view/menu/a5;->c:Landroidx/appcompat/view/menu/go0$d;

    iget-object p1, p1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object p1, p1, Landroidx/appcompat/view/menu/u6;->G:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance p1, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
