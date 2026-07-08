.class public Landroidx/appcompat/view/menu/o90$a;
.super Landroidx/appcompat/view/menu/y51;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/o90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final f:Landroidx/lifecycle/r$b;


# instance fields
.field public d:Landroidx/appcompat/view/menu/dw0;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/o90$a$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o90$a$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/o90$a;->f:Landroidx/lifecycle/r$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/y51;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/dw0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/dw0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/o90$a;->d:Landroidx/appcompat/view/menu/dw0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o90$a;->e:Z

    return-void
.end method

.method public static d(Landroidx/appcompat/view/menu/a61;)Landroidx/appcompat/view/menu/o90$a;
    .locals 2

    new-instance v0, Landroidx/lifecycle/r;

    sget-object v1, Landroidx/appcompat/view/menu/o90$a;->f:Landroidx/lifecycle/r$b;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/r;-><init>(Landroidx/appcompat/view/menu/a61;Landroidx/lifecycle/r$b;)V

    const-class p0, Landroidx/appcompat/view/menu/o90$a;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/r;->a(Ljava/lang/Class;)Landroidx/appcompat/view/menu/y51;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/o90$a;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/view/menu/y51;->c()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o90$a;->d:Landroidx/appcompat/view/menu/dw0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/dw0;->j()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/o90$a;->d:Landroidx/appcompat/view/menu/dw0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/dw0;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/o90$a;->d:Landroidx/appcompat/view/menu/dw0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/dw0;->n(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/o90$a;->d:Landroidx/appcompat/view/menu/dw0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/dw0;->j()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/o90$a;->d:Landroidx/appcompat/view/menu/dw0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/dw0;->n(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method
