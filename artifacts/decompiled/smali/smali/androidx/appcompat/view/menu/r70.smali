.class public Landroidx/appcompat/view/menu/r70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/a80$d;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/y70;

.field public final b:Landroidx/appcompat/view/menu/a80$b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/y70;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/a80$b;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/a80$b;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/r70;->b:Landroidx/appcompat/view/menu/a80$b;

    iput-object p1, p0, Landroidx/appcompat/view/menu/r70;->a:Landroidx/appcompat/view/menu/y70;

    return-void
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/a80$d$a;Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/r70;->c(Landroidx/appcompat/view/menu/a80$d$a;Z)V

    return-void
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/a80$d$a;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/a80$d$a;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;Landroidx/appcompat/view/menu/a80$d$a;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    invoke-interface {p2, v1}, Landroidx/appcompat/view/menu/a80$d$a;->a(Z)V

    return-void

    :cond_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/r70;->b:Landroidx/appcompat/view/menu/a80$b;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/a80$b;->a(I)Ljava/lang/Character;

    move-result-object v3

    new-instance v4, Landroidx/appcompat/view/menu/y70$b;

    invoke-direct {v4, p1, v3}, Landroidx/appcompat/view/menu/y70$b;-><init>(Landroid/view/KeyEvent;Ljava/lang/Character;)V

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/r70;->a:Landroidx/appcompat/view/menu/y70;

    new-instance v0, Landroidx/appcompat/view/menu/q70;

    invoke-direct {v0, p2}, Landroidx/appcompat/view/menu/q70;-><init>(Landroidx/appcompat/view/menu/a80$d$a;)V

    invoke-virtual {p1, v4, v1, v0}, Landroidx/appcompat/view/menu/y70;->e(Landroidx/appcompat/view/menu/y70$b;ZLandroidx/appcompat/view/menu/y70$a;)V

    return-void
.end method
