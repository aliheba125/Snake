.class public Landroidx/appcompat/view/menu/sj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/yy;
.implements Landroidx/appcompat/view/menu/zy;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/el0;

.field public final b:Landroid/content/Context;

.field public final c:Landroidx/appcompat/view/menu/el0;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Landroidx/appcompat/view/menu/el0;Ljava/util/concurrent/Executor;)V
    .locals 6

    .line 1
    new-instance v1, Landroidx/appcompat/view/menu/rj;

    invoke-direct {v1, p1, p2}, Landroidx/appcompat/view/menu/rj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/sj;-><init>(Landroidx/appcompat/view/menu/el0;Ljava/util/Set;Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/el0;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/el0;Ljava/util/Set;Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/el0;Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/sj;->a:Landroidx/appcompat/view/menu/el0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/sj;->d:Ljava/util/Set;

    iput-object p3, p0, Landroidx/appcompat/view/menu/sj;->e:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroidx/appcompat/view/menu/sj;->c:Landroidx/appcompat/view/menu/el0;

    iput-object p5, p0, Landroidx/appcompat/view/menu/sj;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/sj;)Ljava/lang/Void;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sj;->k()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/appcompat/view/menu/sj;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sj;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/view/menu/az;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/sj;->j(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/view/menu/az;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/appcompat/view/menu/ul0;Landroidx/appcompat/view/menu/xd;)Landroidx/appcompat/view/menu/sj;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/sj;->h(Landroidx/appcompat/view/menu/ul0;Landroidx/appcompat/view/menu/xd;)Landroidx/appcompat/view/menu/sj;

    move-result-object p0

    return-object p0
.end method

.method public static g()Landroidx/appcompat/view/menu/ud;
    .locals 4

    const-class v0, Landroidx/appcompat/view/menu/u7;

    const-class v1, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroidx/appcompat/view/menu/yy;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroidx/appcompat/view/menu/zy;

    aput-object v3, v1, v2

    const-class v2, Landroidx/appcompat/view/menu/sj;

    invoke-static {v2, v1}, Landroidx/appcompat/view/menu/ud;->f(Ljava/lang/Class;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Landroidx/appcompat/view/menu/il;->j(Ljava/lang/Class;)Landroidx/appcompat/view/menu/il;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v1

    const-class v2, Landroidx/appcompat/view/menu/or;

    invoke-static {v2}, Landroidx/appcompat/view/menu/il;->j(Ljava/lang/Class;)Landroidx/appcompat/view/menu/il;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v1

    const-class v2, Landroidx/appcompat/view/menu/wy;

    invoke-static {v2}, Landroidx/appcompat/view/menu/il;->l(Ljava/lang/Class;)Landroidx/appcompat/view/menu/il;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v1

    const-class v2, Landroidx/appcompat/view/menu/l41;

    invoke-static {v2}, Landroidx/appcompat/view/menu/il;->k(Ljava/lang/Class;)Landroidx/appcompat/view/menu/il;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v1

    invoke-static {v0}, Landroidx/appcompat/view/menu/il;->i(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/il;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/ud$b;->b(Landroidx/appcompat/view/menu/il;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/oj;

    invoke-direct {v2, v0}, Landroidx/appcompat/view/menu/oj;-><init>(Landroidx/appcompat/view/menu/ul0;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/ud$b;->f(Landroidx/appcompat/view/menu/de;)Landroidx/appcompat/view/menu/ud$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ud$b;->d()Landroidx/appcompat/view/menu/ud;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Landroidx/appcompat/view/menu/ul0;Landroidx/appcompat/view/menu/xd;)Landroidx/appcompat/view/menu/sj;
    .locals 7

    new-instance v6, Landroidx/appcompat/view/menu/sj;

    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/xd;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Landroidx/appcompat/view/menu/or;

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/xd;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/or;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/or;->n()Ljava/lang/String;

    move-result-object v2

    const-class v0, Landroidx/appcompat/view/menu/wy;

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/xd;->c(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    const-class v0, Landroidx/appcompat/view/menu/l41;

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/xd;->d(Ljava/lang/Class;)Landroidx/appcompat/view/menu/el0;

    move-result-object v4

    invoke-interface {p1, p0}, Landroidx/appcompat/view/menu/xd;->e(Landroidx/appcompat/view/menu/ul0;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/util/concurrent/Executor;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/sj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Landroidx/appcompat/view/menu/el0;Ljava/util/concurrent/Executor;)V

    return-object v6
.end method

.method public static synthetic j(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/view/menu/az;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/az;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/az;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/zy0;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/sj;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/view/menu/o41;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-static {v0}, Landroidx/appcompat/view/menu/jz0;->e(Ljava/lang/Object;)Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/sj;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/appcompat/view/menu/pj;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/pj;-><init>(Landroidx/appcompat/view/menu/sj;)V

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/jz0;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Landroidx/appcompat/view/menu/zy$a;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Landroidx/appcompat/view/menu/sj;->a:Landroidx/appcompat/view/menu/el0;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/el0;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/az;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/az;->i(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/az;->g()V

    sget-object p1, Landroidx/appcompat/view/menu/zy$a;->p:Landroidx/appcompat/view/menu/zy$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object p1, Landroidx/appcompat/view/menu/zy$a;->n:Landroidx/appcompat/view/menu/zy$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final synthetic i()Ljava/lang/String;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/sj;->a:Landroidx/appcompat/view/menu/el0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/el0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/az;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/az;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/az;->b()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/bz;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "agent"

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/bz;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "dates"

    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/bz;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "heartbeats"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    const-string v2, "2"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Landroid/util/Base64OutputStream;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->close()V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    :try_start_7
    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0

    :goto_4
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public final synthetic k()Ljava/lang/Void;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/sj;->a:Landroidx/appcompat/view/menu/el0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/el0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/az;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/appcompat/view/menu/sj;->c:Landroidx/appcompat/view/menu/el0;

    invoke-interface {v3}, Landroidx/appcompat/view/menu/el0;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/l41;

    invoke-interface {v3}, Landroidx/appcompat/view/menu/l41;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/az;->k(JLjava/lang/String;)V

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public l()Landroidx/appcompat/view/menu/zy0;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/sj;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    invoke-static {v1}, Landroidx/appcompat/view/menu/jz0;->e(Ljava/lang/Object;)Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/sj;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/view/menu/o41;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroidx/appcompat/view/menu/jz0;->e(Ljava/lang/Object;)Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/sj;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/appcompat/view/menu/qj;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/qj;-><init>(Landroidx/appcompat/view/menu/sj;)V

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/jz0;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    return-object v0
.end method
