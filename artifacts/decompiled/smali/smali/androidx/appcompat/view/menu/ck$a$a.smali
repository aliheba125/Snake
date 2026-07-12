.class public final Landroidx/appcompat/view/menu/ck$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/ck$a;->d(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/gw0$d;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroidx/appcompat/view/menu/ck$a;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/gw0$d;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/appcompat/view/menu/ck$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ck$a$a;->a:Landroidx/appcompat/view/menu/gw0$d;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ck$a$a;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/appcompat/view/menu/ck$a$a;->c:Landroid/view/View;

    iput-object p4, p0, Landroidx/appcompat/view/menu/ck$a$a;->d:Landroidx/appcompat/view/menu/ck$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/appcompat/view/menu/ck$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/ck$a$a;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/appcompat/view/menu/ck$a;)V

    return-void
.end method

.method public static final b(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/appcompat/view/menu/ck$a;)V
    .locals 1

    const-string v0, "$container"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ck$a;->h()Landroidx/appcompat/view/menu/ck$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/gw0$d;->f(Landroidx/appcompat/view/menu/gw0$b;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ck$a$a;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$a$a;->c:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$a$a;->d:Landroidx/appcompat/view/menu/ck$a;

    new-instance v2, Landroidx/appcompat/view/menu/bk;

    invoke-direct {v2, p1, v0, v1}, Landroidx/appcompat/view/menu/bk;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/appcompat/view/menu/ck$a;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Animation from operation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$a$a;->a:Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has ended."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Animation from operation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$a$a;->a:Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has reached onAnimationStart."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
