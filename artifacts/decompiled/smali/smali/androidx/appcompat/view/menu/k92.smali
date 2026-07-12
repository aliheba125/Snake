.class public abstract Landroidx/appcompat/view/menu/k92;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/a52;

.field public static final b:Landroidx/appcompat/view/menu/a52;

.field public static final c:Landroidx/appcompat/view/menu/a52;

.field public static final d:Landroidx/appcompat/view/menu/a52;

.field public static volatile e:Landroidx/appcompat/view/menu/rf1;

.field public static final f:Ljava/lang/Object;

.field public static g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/br1;

    const-string v1, "0\u0082\u0005\u00c80\u0082\u0003\u00b0\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\u0008s\u00f9/\u008eQ\u00ed"

    invoke-static {v1}, Landroidx/appcompat/view/menu/w02;->k(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/br1;-><init>([B)V

    sput-object v0, Landroidx/appcompat/view/menu/k92;->a:Landroidx/appcompat/view/menu/a52;

    new-instance v0, Landroidx/appcompat/view/menu/fu1;

    const-string v1, "0\u0082\u0006\u00040\u0082\u0003\u00ec\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0003\u00a3\u00b2\u00ad\u00d7\u00e1r\u00cak\u00ec"

    invoke-static {v1}, Landroidx/appcompat/view/menu/w02;->k(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/fu1;-><init>([B)V

    sput-object v0, Landroidx/appcompat/view/menu/k92;->b:Landroidx/appcompat/view/menu/a52;

    new-instance v0, Landroidx/appcompat/view/menu/nw1;

    const-string v1, "0\u0082\u0004C0\u0082\u0003+\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c2\u00e0\u0087FdJ0\u008d0"

    invoke-static {v1}, Landroidx/appcompat/view/menu/w02;->k(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/nw1;-><init>([B)V

    sput-object v0, Landroidx/appcompat/view/menu/k92;->c:Landroidx/appcompat/view/menu/a52;

    new-instance v0, Landroidx/appcompat/view/menu/ry1;

    const-string v1, "0\u0082\u0004\u00a80\u0082\u0003\u0090\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00d5\u0085\u00b8l}\u00d3N\u00f50"

    invoke-static {v1}, Landroidx/appcompat/view/menu/w02;->k(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ry1;-><init>([B)V

    sput-object v0, Landroidx/appcompat/view/menu/k92;->d:Landroidx/appcompat/view/menu/a52;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/k92;->f:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroidx/appcompat/view/menu/w02;ZZ)Landroidx/appcompat/view/menu/pf2;
    .locals 1

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/k92;->f(Ljava/lang/String;Landroidx/appcompat/view/menu/w02;ZZ)Landroidx/appcompat/view/menu/pf2;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;ZZZ)Landroidx/appcompat/view/menu/pf2;
    .locals 0

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p2, p3}, Landroidx/appcompat/view/menu/k92;->g(Ljava/lang/String;ZZZZ)Landroidx/appcompat/view/menu/pf2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(ZLjava/lang/String;Landroidx/appcompat/view/menu/w02;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Landroidx/appcompat/view/menu/k92;->f(Ljava/lang/String;Landroidx/appcompat/view/menu/w02;ZZ)Landroidx/appcompat/view/menu/pf2;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/pf2;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "debug cert rejected"

    goto :goto_0

    :cond_0
    const-string v0, "not allowed"

    :goto_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Landroidx/appcompat/view/menu/i2;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/w02;->u2()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/view/menu/gz;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "12451000.false"

    filled-new-array {v0, p1, p2, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: pkg=%s, sha256=%s, atk=%s, ver=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)V
    .locals 2

    const-class v0, Landroidx/appcompat/view/menu/k92;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/k92;->g:Landroid/content/Context;

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Landroidx/appcompat/view/menu/k92;->g:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static e()Z
    .locals 2

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/k92;->h()V

    sget-object v1, Landroidx/appcompat/view/menu/k92;->e:Landroidx/appcompat/view/menu/rf1;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/rf1;->e()Z

    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    :catch_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static f(Ljava/lang/String;Landroidx/appcompat/view/menu/w02;ZZ)Landroidx/appcompat/view/menu/pf2;
    .locals 2

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/k92;->h()V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v0, Landroidx/appcompat/view/menu/k92;->g:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/oe2;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/appcompat/view/menu/oe2;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/w02;ZZ)V

    :try_start_1
    sget-object p3, Landroidx/appcompat/view/menu/k92;->e:Landroidx/appcompat/view/menu/rf1;

    sget-object v1, Landroidx/appcompat/view/menu/k92;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/vf0;->k(Ljava/lang/Object;)Landroidx/appcompat/view/menu/b20;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Landroidx/appcompat/view/menu/rf1;->w0(Landroidx/appcompat/view/menu/oe2;Landroidx/appcompat/view/menu/b20;)Z

    move-result p3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p3, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/pf2;->b()Landroidx/appcompat/view/menu/pf2;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p3, Landroidx/appcompat/view/menu/wo1;

    invoke-direct {p3, p2, p0, p1}, Landroidx/appcompat/view/menu/wo1;-><init>(ZLjava/lang/String;Landroidx/appcompat/view/menu/w02;)V

    new-instance p0, Landroidx/appcompat/view/menu/ff2;

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Landroidx/appcompat/view/menu/ff2;-><init>(Ljava/util/concurrent/Callable;Landroidx/appcompat/view/menu/ze2;)V

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "module call"

    invoke-static {p1, p0}, Landroidx/appcompat/view/menu/pf2;->d(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/appcompat/view/menu/pf2;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "module init: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/appcompat/view/menu/pf2;->d(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/appcompat/view/menu/pf2;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;ZZZZ)Landroidx/appcompat/view/menu/pf2;
    .locals 6

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p2

    :try_start_0
    sget-object p3, Landroidx/appcompat/view/menu/k92;->g:Landroid/content/Context;

    invoke-static {p3}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroidx/appcompat/view/menu/k92;->h()V
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance p3, Landroidx/appcompat/view/menu/za2;

    const/4 v3, 0x0

    sget-object v0, Landroidx/appcompat/view/menu/k92;->g:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/view/menu/vf0;->k(Ljava/lang/Object;)Landroidx/appcompat/view/menu/b20;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/za2;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_0

    :try_start_3
    sget-object p0, Landroidx/appcompat/view/menu/k92;->e:Landroidx/appcompat/view/menu/rf1;

    invoke-interface {p0, p3}, Landroidx/appcompat/view/menu/rf1;->Q1(Landroidx/appcompat/view/menu/za2;)Landroidx/appcompat/view/menu/md2;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    sget-object p0, Landroidx/appcompat/view/menu/k92;->e:Landroidx/appcompat/view/menu/rf1;

    invoke-interface {p0, p3}, Landroidx/appcompat/view/menu/rf1;->j2(Landroidx/appcompat/view/menu/za2;)Landroidx/appcompat/view/menu/md2;

    move-result-object p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/md2;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/md2;->i()I

    move-result p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/pf2;->f(I)Landroidx/appcompat/view/menu/pf2;

    move-result-object p0

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/md2;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/md2;->k()I

    move-result p3

    const/4 p4, 0x4

    if-ne p3, p4, :cond_2

    new-instance p3, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    const-string p4, "error checking package certificate"

    if-nez p1, :cond_3

    move-object p1, p4

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/md2;->i()I

    move-result p4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/md2;->k()I

    move-result p0

    invoke-static {p4, p0, p1, p3}, Landroidx/appcompat/view/menu/pf2;->g(IILjava/lang/String;Ljava/lang/Throwable;)Landroidx/appcompat/view/menu/pf2;

    move-result-object p0

    goto :goto_3

    :goto_2
    const-string p1, "module call"

    invoke-static {p1, p0}, Landroidx/appcompat/view/menu/pf2;->d(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/appcompat/view/menu/pf2;

    move-result-object p0

    goto :goto_3

    :catch_1
    move-exception p0

    const-string p1, "module init: "

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/appcompat/view/menu/pf2;->d(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/appcompat/view/menu/pf2;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :goto_4
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static h()V
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/k92;->e:Landroidx/appcompat/view/menu/rf1;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/k92;->g:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/appcompat/view/menu/k92;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/k92;->e:Landroidx/appcompat/view/menu/rf1;

    if-nez v1, :cond_1

    sget-object v1, Landroidx/appcompat/view/menu/k92;->g:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->f:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string v3, "com.google.android.gms.googlecertificates"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->d(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/of1;->j(Landroid/os/IBinder;)Landroidx/appcompat/view/menu/rf1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/k92;->e:Landroidx/appcompat/view/menu/rf1;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
