.class public final Landroidx/appcompat/view/menu/q5$b;
.super Landroidx/appcompat/view/menu/yb$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/q5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/yb$b;

.field public b:Landroidx/appcompat/view/menu/c2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/yb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/yb;
    .locals 4

    new-instance v0, Landroidx/appcompat/view/menu/q5;

    iget-object v1, p0, Landroidx/appcompat/view/menu/q5$b;->a:Landroidx/appcompat/view/menu/yb$b;

    iget-object v2, p0, Landroidx/appcompat/view/menu/q5$b;->b:Landroidx/appcompat/view/menu/c2;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/q5;-><init>(Landroidx/appcompat/view/menu/yb$b;Landroidx/appcompat/view/menu/c2;Landroidx/appcompat/view/menu/q5$a;)V

    return-object v0
.end method

.method public b(Landroidx/appcompat/view/menu/c2;)Landroidx/appcompat/view/menu/yb$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/q5$b;->b:Landroidx/appcompat/view/menu/c2;

    return-object p0
.end method

.method public c(Landroidx/appcompat/view/menu/yb$b;)Landroidx/appcompat/view/menu/yb$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/q5$b;->a:Landroidx/appcompat/view/menu/yb$b;

    return-object p0
.end method
