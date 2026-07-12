.class public Landroidx/appcompat/view/menu/m10$a;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/m10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->k()Landroidx/appcompat/view/menu/mv0;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v1

    iget-object v1, v1, Landroidx/appcompat/view/menu/p3;->n:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, p3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/view/menu/mv0;->f(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
