.class public final Landroidx/appcompat/view/menu/y81$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/y81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/y81$f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/view/menu/y81$e;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/y81$e;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81$b;->a:Landroidx/appcompat/view/menu/y81$f;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, Landroidx/appcompat/view/menu/y81$d;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/y81$d;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81$b;->a:Landroidx/appcompat/view/menu/y81$f;

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/y81$c;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/y81$c;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81$b;->a:Landroidx/appcompat/view/menu/y81$f;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/y81;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 6
    new-instance v0, Landroidx/appcompat/view/menu/y81$e;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/y81$e;-><init>(Landroidx/appcompat/view/menu/y81;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81$b;->a:Landroidx/appcompat/view/menu/y81$f;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 7
    new-instance v0, Landroidx/appcompat/view/menu/y81$d;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/y81$d;-><init>(Landroidx/appcompat/view/menu/y81;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81$b;->a:Landroidx/appcompat/view/menu/y81$f;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/y81$c;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/y81$c;-><init>(Landroidx/appcompat/view/menu/y81;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81$b;->a:Landroidx/appcompat/view/menu/y81$f;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/y81;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$b;->a:Landroidx/appcompat/view/menu/y81$f;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81$f;->b()Landroidx/appcompat/view/menu/y81;

    move-result-object v0

    return-object v0
.end method

.method public b(ILandroidx/appcompat/view/menu/h50;)Landroidx/appcompat/view/menu/y81$b;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$b;->a:Landroidx/appcompat/view/menu/y81$f;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/y81$f;->c(ILandroidx/appcompat/view/menu/h50;)V

    return-object p0
.end method

.method public c(Landroidx/appcompat/view/menu/h50;)Landroidx/appcompat/view/menu/y81$b;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$b;->a:Landroidx/appcompat/view/menu/y81$f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y81$f;->e(Landroidx/appcompat/view/menu/h50;)V

    return-object p0
.end method

.method public d(Landroidx/appcompat/view/menu/h50;)Landroidx/appcompat/view/menu/y81$b;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$b;->a:Landroidx/appcompat/view/menu/y81$f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y81$f;->g(Landroidx/appcompat/view/menu/h50;)V

    return-object p0
.end method
