.class public final Landroidx/appcompat/view/menu/tb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/zx$a;
.implements Landroidx/appcompat/view/menu/zx$b;


# instance fields
.field public final l:Ljava/util/Queue;

.field public final m:Landroidx/appcompat/view/menu/m2$f;

.field public final n:Landroidx/appcompat/view/menu/r2;

.field public final o:Landroidx/appcompat/view/menu/gb1;

.field public final p:Ljava/util/Set;

.field public final q:Ljava/util/Map;

.field public final r:I

.field public final s:Landroidx/appcompat/view/menu/mc1;

.field public t:Z

.field public final u:Ljava/util/List;

.field public v:Landroidx/appcompat/view/menu/ef;

.field public w:I

.field public final synthetic x:Landroidx/appcompat/view/menu/ay;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ay;Landroidx/appcompat/view/menu/wx;)V
    .locals 3

    iput-object p1, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/tb1;->l:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/tb1;->p:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/tb1;->q:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/tb1;->u:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/tb1;->v:Landroidx/appcompat/view/menu/ef;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/view/menu/tb1;->w:I

    invoke-static {p1}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Landroidx/appcompat/view/menu/wx;->g(Landroid/os/Looper;Landroidx/appcompat/view/menu/tb1;)Landroidx/appcompat/view/menu/m2$f;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/wx;->d()Landroidx/appcompat/view/menu/r2;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/view/menu/tb1;->n:Landroidx/appcompat/view/menu/r2;

    new-instance v2, Landroidx/appcompat/view/menu/gb1;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/gb1;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/view/menu/tb1;->o:Landroidx/appcompat/view/menu/gb1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/wx;->f()I

    move-result v2

    iput v2, p0, Landroidx/appcompat/view/menu/tb1;->r:I

    invoke-interface {v1}, Landroidx/appcompat/view/menu/m2$f;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroidx/appcompat/view/menu/ay;->q(Landroidx/appcompat/view/menu/ay;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/view/menu/wx;->h(Landroid/content/Context;Landroid/os/Handler;)Landroidx/appcompat/view/menu/mc1;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/tb1;->s:Landroidx/appcompat/view/menu/mc1;

    return-void

    :cond_0
    iput-object v0, p0, Landroidx/appcompat/view/menu/tb1;->s:Landroidx/appcompat/view/menu/mc1;

    return-void
.end method

.method public static bridge synthetic A(Landroidx/appcompat/view/menu/tb1;Landroidx/appcompat/view/menu/vb1;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Landroidx/appcompat/view/menu/tb1;->t:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/m2$f;->a()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->D()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static bridge synthetic B(Landroidx/appcompat/view/menu/tb1;Landroidx/appcompat/view/menu/vb1;)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/vb1;->a(Landroidx/appcompat/view/menu/vb1;)Landroidx/appcompat/view/menu/hr;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tb1;->l:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tb1;->l:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/jd1;

    instance-of v3, v2, Landroidx/appcompat/view/menu/bc1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/appcompat/view/menu/bc1;

    invoke-virtual {v3, p0}, Landroidx/appcompat/view/menu/bc1;->g(Landroidx/appcompat/view/menu/tb1;)[Landroidx/appcompat/view/menu/hr;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3, p1}, Landroidx/appcompat/view/menu/s4;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/jd1;

    iget-object v4, p0, Landroidx/appcompat/view/menu/tb1;->l:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    new-instance v4, Landroidx/appcompat/view/menu/w31;

    invoke-direct {v4, p1}, Landroidx/appcompat/view/menu/w31;-><init>(Landroidx/appcompat/view/menu/hr;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/jd1;->b(Ljava/lang/Exception;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static bridge synthetic t(Landroidx/appcompat/view/menu/tb1;)Landroidx/appcompat/view/menu/m2$f;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    return-object p0
.end method

.method public static bridge synthetic v(Landroidx/appcompat/view/menu/tb1;)Landroidx/appcompat/view/menu/r2;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/tb1;->n:Landroidx/appcompat/view/menu/r2;

    return-object p0
.end method

.method public static bridge synthetic x(Landroidx/appcompat/view/menu/tb1;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/tb1;->d(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public static bridge synthetic y(Landroidx/appcompat/view/menu/tb1;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->g()V

    return-void
.end method

.method public static bridge synthetic z(Landroidx/appcompat/view/menu/tb1;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/tb1;->i(I)V

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->c(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/tb1;->v:Landroidx/appcompat/view/menu/ef;

    return-void
.end method

.method public final D()V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->c(Landroid/os/Handler;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/m2$f;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/m2$f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0xa

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ay;->y(Landroidx/appcompat/view/menu/ay;)Landroidx/appcompat/view/menu/od1;

    move-result-object v2

    invoke-static {v1}, Landroidx/appcompat/view/menu/ay;->q(Landroidx/appcompat/view/menu/ay;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/view/menu/od1;->b(Landroid/content/Context;Landroidx/appcompat/view/menu/m2$f;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Landroidx/appcompat/view/menu/ef;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroidx/appcompat/view/menu/ef;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x23

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "The service for "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/view/menu/tb1;->G(Landroidx/appcompat/view/menu/ef;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/appcompat/view/menu/xb1;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    iget-object v3, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    iget-object v4, p0, Landroidx/appcompat/view/menu/tb1;->n:Landroidx/appcompat/view/menu/r2;

    invoke-direct {v1, v2, v3, v4}, Landroidx/appcompat/view/menu/xb1;-><init>(Landroidx/appcompat/view/menu/ay;Landroidx/appcompat/view/menu/m2$f;Landroidx/appcompat/view/menu/r2;)V

    invoke-interface {v3}, Landroidx/appcompat/view/menu/m2$f;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/appcompat/view/menu/tb1;->s:Landroidx/appcompat/view/menu/mc1;

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/mc1;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/mc1;->x2(Landroidx/appcompat/view/menu/lc1;)V

    :cond_2
    :try_start_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-interface {v2, v1}, Landroidx/appcompat/view/menu/m2$f;->m(Landroidx/appcompat/view/menu/z7$c;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v1

    new-instance v2, Landroidx/appcompat/view/menu/ef;

    invoke-direct {v2, v0}, Landroidx/appcompat/view/menu/ef;-><init>(I)V

    invoke-virtual {p0, v2, v1}, Landroidx/appcompat/view/menu/tb1;->G(Landroidx/appcompat/view/menu/ef;Ljava/lang/Exception;)V

    return-void

    :goto_0
    new-instance v2, Landroidx/appcompat/view/menu/ef;

    invoke-direct {v2, v0}, Landroidx/appcompat/view/menu/ef;-><init>(I)V

    invoke-virtual {p0, v2, v1}, Landroidx/appcompat/view/menu/tb1;->G(Landroidx/appcompat/view/menu/ef;Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final E(Landroidx/appcompat/view/menu/jd1;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->c(Landroid/os/Handler;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/m2$f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/tb1;->o(Landroidx/appcompat/view/menu/jd1;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->l()V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->v:Landroidx/appcompat/view/menu/ef;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ef;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->v:Landroidx/appcompat/view/menu/ef;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/tb1;->G(Landroidx/appcompat/view/menu/ef;Ljava/lang/Exception;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->D()V

    return-void
.end method

.method public final F()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/tb1;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/tb1;->w:I

    return-void
.end method

.method public final G(Landroidx/appcompat/view/menu/ef;Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->c(Landroid/os/Handler;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->s:Landroidx/appcompat/view/menu/mc1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc1;->y2()V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->C()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->y(Landroidx/appcompat/view/menu/ay;)Landroidx/appcompat/view/menu/od1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/od1;->c()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/tb1;->c(Landroidx/appcompat/view/menu/ef;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    instance-of v0, v0, Landroidx/appcompat/view/menu/xd1;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ef;->d()I

    move-result v0

    const/16 v2, 0x18

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ay;->C(Landroidx/appcompat/view/menu/ay;Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v3, 0x493e0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ef;->d()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    invoke-static {}, Landroidx/appcompat/view/menu/ay;->t()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/tb1;->d(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Landroidx/appcompat/view/menu/tb1;->v:Landroidx/appcompat/view/menu/ef;

    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->c(Landroid/os/Handler;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Landroidx/appcompat/view/menu/tb1;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    :cond_4
    iget-object p2, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {p2}, Landroidx/appcompat/view/menu/ay;->e(Landroidx/appcompat/view/menu/ay;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Landroidx/appcompat/view/menu/tb1;->n:Landroidx/appcompat/view/menu/r2;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/ay;->u(Landroidx/appcompat/view/menu/r2;Landroidx/appcompat/view/menu/ef;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-virtual {p0, p2, v0, v1}, Landroidx/appcompat/view/menu/tb1;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/tb1;->l:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/tb1;->p(Landroidx/appcompat/view/menu/ef;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    iget-object p2, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    iget v0, p0, Landroidx/appcompat/view/menu/tb1;->r:I

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/view/menu/ay;->g(Landroidx/appcompat/view/menu/ef;I)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ef;->d()I

    move-result p2

    const/16 v0, 0x12

    if-ne p2, v0, :cond_7

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/tb1;->t:Z

    :cond_7
    iget-boolean p2, p0, Landroidx/appcompat/view/menu/tb1;->t:Z

    if-eqz p2, :cond_8

    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p1}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x9

    iget-object v1, p0, Landroidx/appcompat/view/menu/tb1;->n:Landroidx/appcompat/view/menu/r2;

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->n(Landroidx/appcompat/view/menu/ay;)J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_8
    iget-object p2, p0, Landroidx/appcompat/view/menu/tb1;->n:Landroidx/appcompat/view/menu/r2;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/ay;->u(Landroidx/appcompat/view/menu/r2;Landroidx/appcompat/view/menu/ef;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/tb1;->d(Lcom/google/android/gms/common/api/Status;)V

    :cond_9
    return-void

    :cond_a
    iget-object p2, p0, Landroidx/appcompat/view/menu/tb1;->n:Landroidx/appcompat/view/menu/r2;

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/ay;->u(Landroidx/appcompat/view/menu/r2;Landroidx/appcompat/view/menu/ef;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/tb1;->d(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final H(Landroidx/appcompat/view/menu/ef;)V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->c(Landroid/os/Handler;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x19

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onSignInFailed for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/m2$f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/tb1;->G(Landroidx/appcompat/view/menu/ef;Ljava/lang/Exception;)V

    return-void
.end method

.method public final I()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->c(Landroid/os/Handler;)V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/tb1;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->D()V

    :cond_0
    return-void
.end method

.method public final J()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->c(Landroid/os/Handler;)V

    sget-object v0, Landroidx/appcompat/view/menu/ay;->C:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/tb1;->d(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->o:Landroidx/appcompat/view/menu/gb1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gb1;->d()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Landroidx/appcompat/view/menu/k90;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/k90;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    new-instance v3, Landroidx/appcompat/view/menu/fd1;

    new-instance v4, Landroidx/appcompat/view/menu/bz0;

    invoke-direct {v4}, Landroidx/appcompat/view/menu/bz0;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Landroidx/appcompat/view/menu/fd1;-><init>(Landroidx/appcompat/view/menu/k90;Landroidx/appcompat/view/menu/bz0;)V

    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/tb1;->E(Landroidx/appcompat/view/menu/jd1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/ef;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ef;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/tb1;->c(Landroidx/appcompat/view/menu/ef;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/m2$f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    new-instance v1, Landroidx/appcompat/view/menu/sb1;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/sb1;-><init>(Landroidx/appcompat/view/menu/tb1;)V

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/m2$f;->l(Landroidx/appcompat/view/menu/z7$e;)V

    :cond_1
    return-void
.end method

.method public final K()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->c(Landroid/os/Handler;)V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/tb1;->t:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->s(Landroidx/appcompat/view/menu/ay;)Landroidx/appcompat/view/menu/xx;

    move-result-object v1

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->q(Landroidx/appcompat/view/menu/ay;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/xx;->g(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x15

    const-string v2, "Connection timed out waiting for Google Play services update to complete."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x16

    const-string v2, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/tb1;->d(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    const-string v1, "Timing out connection while resuming."

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/m2$f;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final L()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/m2$f;->o()Z

    move-result v0

    return v0
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/tb1;->q(Z)Z

    move-result v0

    return v0
.end method

.method public final b([Landroidx/appcompat/view/menu/hr;)Landroidx/appcompat/view/menu/hr;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/m2$f;->g()[Landroidx/appcompat/view/menu/hr;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array v1, v2, [Landroidx/appcompat/view/menu/hr;

    :cond_1
    array-length v3, v1

    new-instance v4, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v4, v3}, Landroidx/appcompat/view/menu/o4;-><init>(I)V

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/hr;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/hr;->f()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/hr;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/hr;->f()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v3

    :cond_5
    :goto_3
    return-object v0
.end method

.method public final c(Landroidx/appcompat/view/menu/ef;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    sget-object v0, Landroidx/appcompat/view/menu/ef;->q:Landroidx/appcompat/view/menu/ef;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/wf0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/m2$f;->h()Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->p:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final d(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->c(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/tb1;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->c(Landroid/os/Handler;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    if-eq v2, v0, :cond_6

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/jd1;

    if-eqz p3, :cond_3

    iget v2, v1, Landroidx/appcompat/view/menu/jd1;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/jd1;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, p2}, Landroidx/appcompat/view/menu/jd1;->b(Ljava/lang/Exception;)V

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status XOR exception should be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tb1;->l:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/jd1;

    iget-object v4, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-interface {v4}, Landroidx/appcompat/view/menu/m2$f;->a()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/tb1;->o(Landroidx/appcompat/view/menu/jd1;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/appcompat/view/menu/tb1;->l:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final g()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->C()V

    sget-object v0, Landroidx/appcompat/view/menu/ef;->q:Landroidx/appcompat/view/menu/ef;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/tb1;->c(Landroidx/appcompat/view/menu/ef;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->f()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->l()V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h(I)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/tb1;->i(I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/qb1;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/qb1;-><init>(Landroidx/appcompat/view/menu/tb1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->C()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/tb1;->t:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->o:Landroidx/appcompat/view/menu/gb1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/m2$f;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/gb1;->c(ILjava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0x9

    iget-object v2, p0, Landroidx/appcompat/view/menu/tb1;->n:Landroidx/appcompat/view/menu/r2;

    invoke-static {p1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ay;->n(Landroidx/appcompat/view/menu/ay;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0xb

    iget-object v2, p0, Landroidx/appcompat/view/menu/tb1;->n:Landroidx/appcompat/view/menu/r2;

    invoke-static {p1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ay;->o(Landroidx/appcompat/view/menu/ay;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ay;->y(Landroidx/appcompat/view/menu/ay;)Landroidx/appcompat/view/menu/od1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/od1;->c()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->q:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final j(Landroidx/appcompat/view/menu/ef;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/tb1;->G(Landroidx/appcompat/view/menu/ef;Ljava/lang/Exception;)V

    return-void
.end method

.method public final k(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->g()V

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/menu/pb1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/pb1;-><init>(Landroidx/appcompat/view/menu/tb1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/tb1;->n:Landroidx/appcompat/view/menu/r2;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Landroidx/appcompat/view/menu/tb1;->n:Landroidx/appcompat/view/menu/r2;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v2}, Landroidx/appcompat/view/menu/ay;->p(Landroidx/appcompat/view/menu/ay;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final m(Landroidx/appcompat/view/menu/jd1;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->o:Landroidx/appcompat/view/menu/gb1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->L()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/jd1;->d(Landroidx/appcompat/view/menu/gb1;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/jd1;->c(Landroidx/appcompat/view/menu/tb1;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/tb1;->h(I)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/m2$f;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final n()V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/tb1;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Landroidx/appcompat/view/menu/tb1;->n:Landroidx/appcompat/view/menu/r2;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Landroidx/appcompat/view/menu/tb1;->n:Landroidx/appcompat/view/menu/r2;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/tb1;->t:Z

    :cond_0
    return-void
.end method

.method public final o(Landroidx/appcompat/view/menu/jd1;)Z
    .locals 9

    instance-of v0, p1, Landroidx/appcompat/view/menu/bc1;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/tb1;->m(Landroidx/appcompat/view/menu/jd1;)V

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/bc1;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/bc1;->g(Landroidx/appcompat/view/menu/tb1;)[Landroidx/appcompat/view/menu/hr;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/tb1;->b([Landroidx/appcompat/view/menu/hr;)Landroidx/appcompat/view/menu/hr;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/tb1;->m(Landroidx/appcompat/view/menu/jd1;)V

    return v1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/hr;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/hr;->f()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x4d

    add-int/2addr v6, v7

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not execute call because it requires feature ("

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ay;->e(Landroidx/appcompat/view/menu/ay;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/bc1;->f(Landroidx/appcompat/view/menu/tb1;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Landroidx/appcompat/view/menu/vb1;

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->n:Landroidx/appcompat/view/menu/r2;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v2, v1}, Landroidx/appcompat/view/menu/vb1;-><init>(Landroidx/appcompat/view/menu/r2;Landroidx/appcompat/view/menu/hr;Landroidx/appcompat/view/menu/ub1;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/16 v2, 0xf

    if-ltz v0, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->u:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/vb1;

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->n(Landroidx/appcompat/view/menu/ay;)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v2}, Landroidx/appcompat/view/menu/ay;->n(Landroidx/appcompat/view/menu/ay;)J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->o(Landroidx/appcompat/view/menu/ay;)J

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Landroidx/appcompat/view/menu/ef;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/view/menu/ef;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/tb1;->p(Landroidx/appcompat/view/menu/ef;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    iget v1, p0, Landroidx/appcompat/view/menu/tb1;->r:I

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/ay;->g(Landroidx/appcompat/view/menu/ef;I)Z

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    new-instance p1, Landroidx/appcompat/view/menu/w31;

    invoke-direct {p1, v2}, Landroidx/appcompat/view/menu/w31;-><init>(Landroidx/appcompat/view/menu/hr;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/jd1;->b(Ljava/lang/Exception;)V

    return v1
.end method

.method public final p(Landroidx/appcompat/view/menu/ef;)Z
    .locals 3

    invoke-static {}, Landroidx/appcompat/view/menu/ay;->z()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ay;->v(Landroidx/appcompat/view/menu/ay;)Landroidx/appcompat/view/menu/hb1;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroidx/appcompat/view/menu/ay;->B(Landroidx/appcompat/view/menu/ay;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/tb1;->n:Landroidx/appcompat/view/menu/r2;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ay;->v(Landroidx/appcompat/view/menu/ay;)Landroidx/appcompat/view/menu/hb1;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/view/menu/tb1;->r:I

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/view/menu/yd1;->s(Landroidx/appcompat/view/menu/ef;I)V

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final q(Z)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->x:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->c(Landroid/os/Handler;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/m2$f;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->o:Landroidx/appcompat/view/menu/gb1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gb1;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tb1;->l()V

    :cond_0
    return v1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    const-string v0, "Timing out service connection."

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/m2$f;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/tb1;->r:I

    return v0
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/tb1;->w:I

    return v0
.end method

.method public final u()Landroidx/appcompat/view/menu/m2$f;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->m:Landroidx/appcompat/view/menu/m2$f;

    return-object v0
.end method

.method public final w()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tb1;->q:Ljava/util/Map;

    return-object v0
.end method
