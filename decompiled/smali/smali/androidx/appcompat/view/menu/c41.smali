.class public final synthetic Landroidx/appcompat/view/menu/c41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/py0$a;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/i41;

.field public final synthetic b:Landroidx/appcompat/view/menu/d21;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/i41;Landroidx/appcompat/view/menu/d21;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/c41;->a:Landroidx/appcompat/view/menu/i41;

    iput-object p2, p0, Landroidx/appcompat/view/menu/c41;->b:Landroidx/appcompat/view/menu/d21;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/c41;->a:Landroidx/appcompat/view/menu/i41;

    iget-object v1, p0, Landroidx/appcompat/view/menu/c41;->b:Landroidx/appcompat/view/menu/d21;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/i41;->d(Landroidx/appcompat/view/menu/i41;Landroidx/appcompat/view/menu/d21;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
