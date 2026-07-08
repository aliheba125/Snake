.class public Landroidx/appcompat/view/menu/a80$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/a80$d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/a80$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/appcompat/view/menu/a80$c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/a80$c;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/a80$c$a;->b:Landroidx/appcompat/view/menu/a80$c;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/a80$c$a;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/a80$c;Landroidx/appcompat/view/menu/a80$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/a80$c$a;-><init>(Landroidx/appcompat/view/menu/a80$c;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/a80$c$a;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/a80$c$a;->a:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/a80$c$a;->b:Landroidx/appcompat/view/menu/a80$c;

    iget v2, v1, Landroidx/appcompat/view/menu/a80$c;->b:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroidx/appcompat/view/menu/a80$c;->b:I

    iget-boolean v0, v1, Landroidx/appcompat/view/menu/a80$c;->c:Z

    or-int/2addr p1, v0

    iput-boolean p1, v1, Landroidx/appcompat/view/menu/a80$c;->c:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    iget-object p1, v1, Landroidx/appcompat/view/menu/a80$c;->d:Landroidx/appcompat/view/menu/a80;

    iget-object v0, v1, Landroidx/appcompat/view/menu/a80$c;->a:Landroid/view/KeyEvent;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/a80;->c(Landroidx/appcompat/view/menu/a80;Landroid/view/KeyEvent;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The onKeyEventHandledCallback should be called exactly once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
