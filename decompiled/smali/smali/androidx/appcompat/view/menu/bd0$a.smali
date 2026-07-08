.class public final Landroidx/appcompat/view/menu/bd0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/bd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/ad0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/bd0$a;->a:Landroidx/appcompat/view/menu/ad0;

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/bd0;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/bd0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bd0$a;->a:Landroidx/appcompat/view/menu/ad0;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/bd0;-><init>(Landroidx/appcompat/view/menu/ad0;)V

    return-object v0
.end method

.method public b(Landroidx/appcompat/view/menu/ad0;)Landroidx/appcompat/view/menu/bd0$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/bd0$a;->a:Landroidx/appcompat/view/menu/ad0;

    return-object p0
.end method
