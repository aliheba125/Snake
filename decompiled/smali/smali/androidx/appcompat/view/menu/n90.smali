.class public abstract Landroidx/appcompat/view/menu/n90;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/appcompat/view/menu/a90;)Landroidx/appcompat/view/menu/n90;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/o90;

    move-object v1, p0

    check-cast v1, Landroidx/appcompat/view/menu/b61;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/b61;->c()Landroidx/appcompat/view/menu/a61;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/o90;-><init>(Landroidx/appcompat/view/menu/a90;Landroidx/appcompat/view/menu/a61;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()V
.end method
