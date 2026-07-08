.class public Landroidx/appcompat/view/menu/so0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/tp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/y6;Landroidx/appcompat/view/menu/j50;I)I
    .locals 0

    iget-object p1, p1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object p1, p1, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-static {p1, p3}, Landroidx/appcompat/view/menu/lv0;->i(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I

    invoke-static {p1, p3}, Landroidx/appcompat/view/menu/lv0;->l(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I

    invoke-static {p1, p3}, Landroidx/appcompat/view/menu/lv0;->m(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I

    const/4 p1, 0x0

    return p1
.end method
