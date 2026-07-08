.class public final Landroidx/lifecycle/p$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/p;->b(Landroidx/appcompat/view/menu/b61;)Landroidx/appcompat/view/menu/nr0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Class;Landroidx/appcompat/view/menu/gi;)Landroidx/appcompat/view/menu/y51;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extras"

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/appcompat/view/menu/nr0;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/nr0;-><init>()V

    return-object p1
.end method
