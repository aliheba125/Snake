.class public final Landroidx/appcompat/view/menu/ck$c;
.super Landroidx/appcompat/view/menu/gw0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final d:Landroidx/appcompat/view/menu/ck$b;

.field public e:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ck$b;)V
    .locals 1

    const-string v0, "animatorInfo"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/appcompat/view/menu/gw0$b;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ck$c;->d:Landroidx/appcompat/view/menu/ck$b;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "container"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ck$c;->e:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/ck$c;->d:Landroidx/appcompat/view/menu/ck$b;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/gw0$d;->f(Landroidx/appcompat/view/menu/gw0$b;)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$c;->d:Landroidx/appcompat/view/menu/ck$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gw0$d;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/appcompat/view/menu/ck$e;->a:Landroidx/appcompat/view/menu/ck$e;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/ck$e;->a(Landroid/animation/AnimatorSet;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    :goto_0
    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animator from operation "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has been canceled"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gw0$d;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " with seeking."

    goto :goto_1

    :cond_2
    const-string v0, "."

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    return-void
.end method

.method public d(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "container"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ck$c;->d:Landroidx/appcompat/view/menu/ck$b;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$c;->e:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/ck$c;->d:Landroidx/appcompat/view/menu/ck$b;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/gw0$d;->f(Landroidx/appcompat/view/menu/gw0$b;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animator from operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has started."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/h7;Landroid/view/ViewGroup;)V
    .locals 8

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/ck$c;->d:Landroidx/appcompat/view/menu/ck$b;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object p2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$c;->e:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/ck$c;->d:Landroidx/appcompat/view/menu/ck$b;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/gw0$d;->f(Landroidx/appcompat/view/menu/gw0$b;)V

    return-void

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_5

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/av;->m:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding BackProgressCallbacks for Animators to operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    sget-object v2, Landroidx/appcompat/view/menu/ck$d;->a:Landroidx/appcompat/view/menu/ck$d;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ck$d;->a(Landroid/animation/AnimatorSet;)J

    move-result-wide v2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h7;->a()F

    move-result p1

    long-to-float v4, v2

    mul-float/2addr p1, v4

    float-to-long v4, p1

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    const-wide/16 v6, 0x1

    if-nez p1, :cond_2

    move-wide v4, v6

    :cond_2
    cmp-long p1, v4, v2

    if-nez p1, :cond_3

    sub-long v4, v2, v6

    :cond_3
    invoke-static {v1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting currentPlayTime to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " for Animator "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " on operation "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    sget-object p1, Landroidx/appcompat/view/menu/ck$e;->a:Landroidx/appcompat/view/menu/ck$e;

    invoke-virtual {p1, v0, v4, v5}, Landroidx/appcompat/view/menu/ck$e;->b(Landroid/animation/AnimatorSet;J)V

    :cond_5
    return-void
.end method

.method public f(Landroid/view/ViewGroup;)V
    .locals 9

    const-string v0, "container"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$c;->d:Landroidx/appcompat/view/menu/ck$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ck$f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$c;->d:Landroidx/appcompat/view/menu/ck$b;

    const-string v2, "context"

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/ck$b;->c(Landroid/content/Context;)Landroidx/appcompat/view/menu/cv$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/view/menu/cv$a;->b:Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/view/menu/ck$c;->e:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$c;->d:Landroidx/appcompat/view/menu/ck$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/gw0$d;->h()Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/view/menu/gw0$d$b;->p:Landroidx/appcompat/view/menu/gw0$d$b;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    move v4, v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    iget-object v7, p0, Landroidx/appcompat/view/menu/ck$c;->e:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_3

    new-instance v8, Landroidx/appcompat/view/menu/ck$c$a;

    move-object v1, v8

    move-object v2, p1

    move-object v3, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/view/menu/ck$c$a;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/ck$c;)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/view/menu/ck$c;->e:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final h()Landroidx/appcompat/view/menu/ck$b;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$c;->d:Landroidx/appcompat/view/menu/ck$b;

    return-object v0
.end method
