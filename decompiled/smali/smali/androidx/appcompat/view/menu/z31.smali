.class public final synthetic Landroidx/appcompat/view/menu/z31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/py0$a;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/gp;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/gp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/z31;->a:Landroidx/appcompat/view/menu/gp;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z31;->a:Landroidx/appcompat/view/menu/gp;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/gp;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
