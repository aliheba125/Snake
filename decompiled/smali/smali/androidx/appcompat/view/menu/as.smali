.class public Landroidx/appcompat/view/menu/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/bs;


# static fields
.field public static final m:Ljava/lang/Object;

.field public static final n:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/or;

.field public final b:Landroidx/appcompat/view/menu/vr;

.field public final c:Landroidx/appcompat/view/menu/zh0;

.field public final d:Landroidx/appcompat/view/menu/t41;

.field public final e:Landroidx/appcompat/view/menu/j80;

.field public final f:Landroidx/appcompat/view/menu/rn0;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Ljava/util/concurrent/Executor;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/Set;

.field public final l:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/as;->m:Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/as$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/as$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/as;->n:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/or;Landroidx/appcompat/view/menu/el0;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 9

    .line 1
    new-instance v4, Landroidx/appcompat/view/menu/vr;

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/or;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, p2}, Landroidx/appcompat/view/menu/vr;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/el0;)V

    new-instance v5, Landroidx/appcompat/view/menu/zh0;

    invoke-direct {v5, p1}, Landroidx/appcompat/view/menu/zh0;-><init>(Landroidx/appcompat/view/menu/or;)V

    .line 3
    invoke-static {}, Landroidx/appcompat/view/menu/t41;->c()Landroidx/appcompat/view/menu/t41;

    move-result-object v6

    new-instance v7, Landroidx/appcompat/view/menu/j80;

    new-instance p2, Landroidx/appcompat/view/menu/xr;

    invoke-direct {p2, p1}, Landroidx/appcompat/view/menu/xr;-><init>(Landroidx/appcompat/view/menu/or;)V

    invoke-direct {v7, p2}, Landroidx/appcompat/view/menu/j80;-><init>(Landroidx/appcompat/view/menu/el0;)V

    new-instance v8, Landroidx/appcompat/view/menu/rn0;

    invoke-direct {v8}, Landroidx/appcompat/view/menu/rn0;-><init>()V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    .line 4
    invoke-direct/range {v0 .. v8}, Landroidx/appcompat/view/menu/as;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/or;Landroidx/appcompat/view/menu/vr;Landroidx/appcompat/view/menu/zh0;Landroidx/appcompat/view/menu/t41;Landroidx/appcompat/view/menu/j80;Landroidx/appcompat/view/menu/rn0;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/or;Landroidx/appcompat/view/menu/vr;Landroidx/appcompat/view/menu/zh0;Landroidx/appcompat/view/menu/t41;Landroidx/appcompat/view/menu/j80;Landroidx/appcompat/view/menu/rn0;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/as;->g:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/as;->k:Ljava/util/Set;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/as;->l:Ljava/util/List;

    iput-object p3, p0, Landroidx/appcompat/view/menu/as;->a:Landroidx/appcompat/view/menu/or;

    iput-object p4, p0, Landroidx/appcompat/view/menu/as;->b:Landroidx/appcompat/view/menu/vr;

    iput-object p5, p0, Landroidx/appcompat/view/menu/as;->c:Landroidx/appcompat/view/menu/zh0;

    iput-object p6, p0, Landroidx/appcompat/view/menu/as;->d:Landroidx/appcompat/view/menu/t41;

    iput-object p7, p0, Landroidx/appcompat/view/menu/as;->e:Landroidx/appcompat/view/menu/j80;

    iput-object p8, p0, Landroidx/appcompat/view/menu/as;->f:Landroidx/appcompat/view/menu/rn0;

    iput-object p1, p0, Landroidx/appcompat/view/menu/as;->h:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Landroidx/appcompat/view/menu/as;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/or;)Landroidx/appcompat/view/menu/e40;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/as;->z(Landroidx/appcompat/view/menu/or;)Landroidx/appcompat/view/menu/e40;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/appcompat/view/menu/as;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->x()V

    return-void
.end method

.method public static synthetic e(Landroidx/appcompat/view/menu/as;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/as;->w(Z)V

    return-void
.end method

.method public static synthetic f(Landroidx/appcompat/view/menu/as;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/as;->y(Z)V

    return-void
.end method

.method public static q()Landroidx/appcompat/view/menu/as;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/or;->k()Landroidx/appcompat/view/menu/or;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/as;->r(Landroidx/appcompat/view/menu/or;)Landroidx/appcompat/view/menu/as;

    move-result-object v0

    return-object v0
.end method

.method public static r(Landroidx/appcompat/view/menu/or;)Landroidx/appcompat/view/menu/as;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Null is not a valid value of FirebaseApp."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/mj0;->b(ZLjava/lang/Object;)V

    const-class v0, Landroidx/appcompat/view/menu/bs;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/or;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/as;

    return-object p0
.end method

.method public static synthetic z(Landroidx/appcompat/view/menu/or;)Landroidx/appcompat/view/menu/e40;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/e40;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/e40;-><init>(Landroidx/appcompat/view/menu/or;)V

    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/mj0;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->u()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/mj0;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->m()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/mj0;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/t41;->h(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/mj0;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/t41;->g(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/mj0;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method public final B(Landroidx/appcompat/view/menu/ai0;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/as;->a:Landroidx/appcompat/view/menu/or;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/or;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHIME_ANDROID_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/as;->a:Landroidx/appcompat/view/menu/or;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/or;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->m()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/as;->f:Landroidx/appcompat/view/menu/rn0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rn0;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->p()Landroidx/appcompat/view/menu/e40;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e40;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/appcompat/view/menu/as;->f:Landroidx/appcompat/view/menu/rn0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rn0;->a()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public final C(Landroidx/appcompat/view/menu/ai0;)Landroidx/appcompat/view/menu/ai0;
    .locals 10

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->p()Landroidx/appcompat/view/menu/e40;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e40;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/as;->b:Landroidx/appcompat/view/menu/vr;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/view/menu/vr;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/l50;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/as$b;->a:[I

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l50;->e()Landroidx/appcompat/view/menu/l50$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    const-string v0, "BAD CONFIG"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/ai0;->q(Ljava/lang/String;)Landroidx/appcompat/view/menu/ai0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Landroidx/appcompat/view/menu/cs;

    const-string v0, "Firebase Installations Service is unavailable. Please try again later."

    sget-object v1, Landroidx/appcompat/view/menu/cs$a;->n:Landroidx/appcompat/view/menu/cs$a;

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/view/menu/cs;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/cs$a;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l50;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l50;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroidx/appcompat/view/menu/as;->d:Landroidx/appcompat/view/menu/t41;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/t41;->b()J

    move-result-wide v5

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l50;->b()Landroidx/appcompat/view/menu/a11;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/a11;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l50;->b()Landroidx/appcompat/view/menu/a11;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a11;->d()J

    move-result-wide v8

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroidx/appcompat/view/menu/ai0;->s(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Landroidx/appcompat/view/menu/ai0;

    move-result-object p1

    return-object p1
.end method

.method public final D(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/as;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/as;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/yw0;

    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/yw0;->b(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final E(Landroidx/appcompat/view/menu/ai0;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/as;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/as;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/yw0;

    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/yw0;->a(Landroidx/appcompat/view/menu/ai0;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized F(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/as;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized G(Landroidx/appcompat/view/menu/ai0;Landroidx/appcompat/view/menu/ai0;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/as;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ai0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/as;->k:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ai0;->d()Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public a()Landroidx/appcompat/view/menu/zy0;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->A()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jz0;->e(Ljava/lang/Object;)Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->h()Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/as;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Landroidx/appcompat/view/menu/wr;

    invoke-direct {v2, p0}, Landroidx/appcompat/view/menu/wr;-><init>(Landroidx/appcompat/view/menu/as;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public b(Z)Landroidx/appcompat/view/menu/zy0;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->A()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->g()Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/as;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Landroidx/appcompat/view/menu/zr;

    invoke-direct {v2, p0, p1}, Landroidx/appcompat/view/menu/zr;-><init>(Landroidx/appcompat/view/menu/as;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final g()Landroidx/appcompat/view/menu/zy0;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/bz0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bz0;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/kx;

    iget-object v2, p0, Landroidx/appcompat/view/menu/as;->d:Landroidx/appcompat/view/menu/t41;

    invoke-direct {v1, v2, v0}, Landroidx/appcompat/view/menu/kx;-><init>(Landroidx/appcompat/view/menu/t41;Landroidx/appcompat/view/menu/bz0;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/as;->i(Landroidx/appcompat/view/menu/yw0;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bz0;->a()Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    return-object v0
.end method

.method public final h()Landroidx/appcompat/view/menu/zy0;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/bz0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bz0;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/lx;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/lx;-><init>(Landroidx/appcompat/view/menu/bz0;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/as;->i(Landroidx/appcompat/view/menu/yw0;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bz0;->a()Landroidx/appcompat/view/menu/zy0;

    move-result-object v0

    return-object v0
.end method

.method public final i(Landroidx/appcompat/view/menu/yw0;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/as;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/as;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->s()Landroidx/appcompat/view/menu/ai0;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ai0;->i()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ai0;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/as;->d:Landroidx/appcompat/view/menu/t41;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/t41;->f(Landroidx/appcompat/view/menu/ai0;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/as;->l(Landroidx/appcompat/view/menu/ai0;)Landroidx/appcompat/view/menu/ai0;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/as;->C(Landroidx/appcompat/view/menu/ai0;)Landroidx/appcompat/view/menu/ai0;

    move-result-object p1
    :try_end_0
    .catch Landroidx/appcompat/view/menu/cs; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/as;->v(Landroidx/appcompat/view/menu/ai0;)V

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/as;->G(Landroidx/appcompat/view/menu/ai0;Landroidx/appcompat/view/menu/ai0;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/as;->F(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Landroidx/appcompat/view/menu/cs;

    sget-object v0, Landroidx/appcompat/view/menu/cs$a;->m:Landroidx/appcompat/view/menu/cs$a;

    invoke-direct {p1, v0}, Landroidx/appcompat/view/menu/cs;-><init>(Landroidx/appcompat/view/menu/cs$a;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/as;->D(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/as;->D(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/as;->E(Landroidx/appcompat/view/menu/ai0;)V

    :goto_3
    return-void

    :goto_4
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/as;->D(Ljava/lang/Exception;)V

    return-void
.end method

.method public final k(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->t()Landroidx/appcompat/view/menu/ai0;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ai0;->p()Landroidx/appcompat/view/menu/ai0;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/as;->E(Landroidx/appcompat/view/menu/ai0;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/as;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/appcompat/view/menu/yr;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/yr;-><init>(Landroidx/appcompat/view/menu/as;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l(Landroidx/appcompat/view/menu/ai0;)Landroidx/appcompat/view/menu/ai0;
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/as;->b:Landroidx/appcompat/view/menu/vr;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/vr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/a11;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/as$b;->b:[I

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a11;->b()Landroidx/appcompat/view/menu/a11$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/as;->F(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->r()Landroidx/appcompat/view/menu/ai0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Landroidx/appcompat/view/menu/cs;

    const-string v0, "Firebase Installations Service is unavailable. Please try again later."

    sget-object v1, Landroidx/appcompat/view/menu/cs$a;->n:Landroidx/appcompat/view/menu/cs$a;

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/view/menu/cs;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/cs$a;)V

    throw p1

    :cond_1
    const-string v0, "BAD CONFIG"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/ai0;->q(Ljava/lang/String;)Landroidx/appcompat/view/menu/ai0;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a11;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a11;->d()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/appcompat/view/menu/as;->d:Landroidx/appcompat/view/menu/t41;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/t41;->b()J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/ai0;->o(Ljava/lang/String;JJ)Landroidx/appcompat/view/menu/ai0;

    move-result-object p1

    return-object p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/as;->a:Landroidx/appcompat/view/menu/or;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/or;->m()Landroidx/appcompat/view/menu/os;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/os;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/as;->a:Landroidx/appcompat/view/menu/or;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/or;->m()Landroidx/appcompat/view/menu/os;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/os;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized o()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/as;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final p()Landroidx/appcompat/view/menu/e40;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/as;->e:Landroidx/appcompat/view/menu/j80;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/j80;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/e40;

    return-object v0
.end method

.method public final s()Landroidx/appcompat/view/menu/ai0;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/as;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/as;->a:Landroidx/appcompat/view/menu/or;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/or;->j()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/hi;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/view/menu/hi;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/as;->c:Landroidx/appcompat/view/menu/zh0;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/zh0;->d()Landroidx/appcompat/view/menu/ai0;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/hi;->b()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/hi;->b()V

    :cond_1
    throw v2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final t()Landroidx/appcompat/view/menu/ai0;
    .locals 5

    sget-object v0, Landroidx/appcompat/view/menu/as;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/as;->a:Landroidx/appcompat/view/menu/or;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/or;->j()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/hi;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/view/menu/hi;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/as;->c:Landroidx/appcompat/view/menu/zh0;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/zh0;->d()Landroidx/appcompat/view/menu/ai0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ai0;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/as;->B(Landroidx/appcompat/view/menu/ai0;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/view/menu/as;->c:Landroidx/appcompat/view/menu/zh0;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ai0;->t(Ljava/lang/String;)Landroidx/appcompat/view/menu/ai0;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/zh0;->b(Landroidx/appcompat/view/menu/ai0;)Landroidx/appcompat/view/menu/ai0;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/hi;->b()V

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_1
    monitor-exit v0

    return-object v2

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/hi;->b()V

    :cond_2
    throw v2

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/as;->a:Landroidx/appcompat/view/menu/or;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/or;->m()Landroidx/appcompat/view/menu/os;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/os;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Landroidx/appcompat/view/menu/ai0;)V
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/as;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/as;->a:Landroidx/appcompat/view/menu/or;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/or;->j()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/hi;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/view/menu/hi;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/as;->c:Landroidx/appcompat/view/menu/zh0;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/zh0;->b(Landroidx/appcompat/view/menu/ai0;)Landroidx/appcompat/view/menu/ai0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/hi;->b()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/hi;->b()V

    :cond_1
    throw p1

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final synthetic w(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/as;->j(Z)V

    return-void
.end method

.method public final synthetic x()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/as;->k(Z)V

    return-void
.end method

.method public final synthetic y(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/as;->k(Z)V

    return-void
.end method
