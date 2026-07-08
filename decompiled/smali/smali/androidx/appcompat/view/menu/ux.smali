.class public Landroidx/appcompat/view/menu/ux;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/or;

.field public final b:Landroidx/appcompat/view/menu/cd0;

.field public final c:Landroidx/appcompat/view/menu/xp0;

.field public final d:Landroidx/appcompat/view/menu/el0;

.field public final e:Landroidx/appcompat/view/menu/el0;

.field public final f:Landroidx/appcompat/view/menu/bs;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/or;Landroidx/appcompat/view/menu/cd0;Landroidx/appcompat/view/menu/el0;Landroidx/appcompat/view/menu/el0;Landroidx/appcompat/view/menu/bs;)V
    .locals 7

    .line 1
    new-instance v3, Landroidx/appcompat/view/menu/xp0;

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/or;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/appcompat/view/menu/xp0;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/ux;-><init>(Landroidx/appcompat/view/menu/or;Landroidx/appcompat/view/menu/cd0;Landroidx/appcompat/view/menu/xp0;Landroidx/appcompat/view/menu/el0;Landroidx/appcompat/view/menu/el0;Landroidx/appcompat/view/menu/bs;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/or;Landroidx/appcompat/view/menu/cd0;Landroidx/appcompat/view/menu/xp0;Landroidx/appcompat/view/menu/el0;Landroidx/appcompat/view/menu/el0;Landroidx/appcompat/view/menu/bs;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ux;->a:Landroidx/appcompat/view/menu/or;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ux;->b:Landroidx/appcompat/view/menu/cd0;

    iput-object p3, p0, Landroidx/appcompat/view/menu/ux;->c:Landroidx/appcompat/view/menu/xp0;

    iput-object p4, p0, Landroidx/appcompat/view/menu/ux;->d:Landroidx/appcompat/view/menu/el0;

    iput-object p5, p0, Landroidx/appcompat/view/menu/ux;->e:Landroidx/appcompat/view/menu/el0;

    iput-object p6, p0, Landroidx/appcompat/view/menu/ux;->f:Landroidx/appcompat/view/menu/bs;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/ux;Landroidx/appcompat/view/menu/zy0;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ux;->h(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "INTERNAL_SERVER_ERROR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "InternalServerError"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final c(Landroidx/appcompat/view/menu/zy0;)Landroidx/appcompat/view/menu/zy0;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ic0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ic0;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/tx;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/tx;-><init>(Landroidx/appcompat/view/menu/ux;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/zy0;->f(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/yg;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ux;->a:Landroidx/appcompat/view/menu/or;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/or;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-1"

    :try_start_0
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/ux;->b([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "[HASH-ERROR]"

    return-object v0
.end method

.method public e()Landroidx/appcompat/view/menu/zy0;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ux;->a:Landroidx/appcompat/view/menu/or;

    invoke-static {v0}, Landroidx/appcompat/view/menu/cd0;->c(Landroidx/appcompat/view/menu/or;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "*"

    invoke-virtual {p0, v0, v2, v1}, Landroidx/appcompat/view/menu/ux;->j(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ux;->c(Landroidx/appcompat/view/menu/zy0;)Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    return-object v0
.end method

.method public final f(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    const-string v0, "SERVICE_NOT_AVAILABLE"

    if-eqz p1, :cond_4

    const-string v1, "registration_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const-string v1, "unregistered"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const-string v1, "error"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "INSTANCE_ID_RESET"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic h(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/String;
    .locals 1

    const-class v0, Ljava/io/IOException;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/zy0;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ux;->f(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sender"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "subtype"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ux;->a:Landroidx/appcompat/view/menu/or;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/or;->m()Landroidx/appcompat/view/menu/os;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/os;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gmp_app_id"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ux;->b:Landroidx/appcompat/view/menu/cd0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cd0;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "gmsv"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "osv"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ux;->b:Landroidx/appcompat/view/menu/cd0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cd0;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_ver"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ux;->b:Landroidx/appcompat/view/menu/cd0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cd0;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_ver_name"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "firebase-app-name-hash"

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ux;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/ux;->f:Landroidx/appcompat/view/menu/bs;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroidx/appcompat/view/menu/bs;->b(Z)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jz0;->a(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/m50;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/m50;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Goog-Firebase-Installations-Auth"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/ux;->f:Landroidx/appcompat/view/menu/bs;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/bs;->a()Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jz0;->a(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "appid"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fcm-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "23.4.0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cliv"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ux;->e:Landroidx/appcompat/view/menu/el0;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/el0;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/zy;

    iget-object p2, p0, Landroidx/appcompat/view/menu/ux;->d:Landroidx/appcompat/view/menu/el0;

    invoke-interface {p2}, Landroidx/appcompat/view/menu/el0;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/l41;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "fire-iid"

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/zy;->b(Ljava/lang/String;)Landroidx/appcompat/view/menu/zy$a;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/view/menu/zy$a;->n:Landroidx/appcompat/view/menu/zy$a;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/zy$a;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Firebase-Client-Log-Type"

    invoke-virtual {p3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Firebase-Client"

    invoke-interface {p2}, Landroidx/appcompat/view/menu/l41;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/appcompat/view/menu/zy0;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/ux;->i(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/ux;->c:Landroidx/appcompat/view/menu/xp0;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/xp0;->b(Landroid/os/Bundle;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/jz0;->d(Ljava/lang/Exception;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/zy0;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/topics/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "gcm.topic"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ux;->j(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ux;->c(Landroidx/appcompat/view/menu/zy0;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/zy0;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/topics/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "gcm.topic"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "delete"

    const-string v3, "1"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ux;->j(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ux;->c(Landroidx/appcompat/view/menu/zy0;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    return-object p1
.end method
