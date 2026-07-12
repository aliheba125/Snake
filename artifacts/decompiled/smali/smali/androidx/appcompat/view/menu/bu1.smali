.class public final synthetic Landroidx/appcompat/view/menu/bu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/uu1;


# instance fields
.field public synthetic a:Landroidx/appcompat/view/menu/du1;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/du1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/bu1;->a:Landroidx/appcompat/view/menu/du1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bu1;->a:Landroidx/appcompat/view/menu/du1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/du1;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
