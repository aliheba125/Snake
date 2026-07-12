.class public final Landroidx/appcompat/view/menu/ck$c$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/ck$c;->f(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/appcompat/view/menu/gw0$d;

.field public final synthetic e:Landroidx/appcompat/view/menu/ck$c;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/ck$c;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ck$c$a;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ck$c$a;->b:Landroid/view/View;

    iput-boolean p3, p0, Landroidx/appcompat/view/menu/ck$c$a;->c:Z

    iput-object p4, p0, Landroidx/appcompat/view/menu/ck$c$a;->d:Landroidx/appcompat/view/menu/gw0$d;

    iput-object p5, p0, Landroidx/appcompat/view/menu/ck$c$a;->e:Landroidx/appcompat/view/menu/ck$c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "anim"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ck$c$a;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$c$a;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/ck$c$a;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/ck$c$a;->d:Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->h()Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$c$a;->b:Landroid/view/View;

    const-string v1, "viewToAnimate"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$c$a;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/gw0$d$b;->e(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/ck$c$a;->e:Landroidx/appcompat/view/menu/ck$c;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ck$c;->h()Landroidx/appcompat/view/menu/ck$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$c$a;->e:Landroidx/appcompat/view/menu/ck$c;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/gw0$d;->f(Landroidx/appcompat/view/menu/gw0$b;)V

    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Animator from operation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$c$a;->d:Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has ended."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method
