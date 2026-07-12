.class public Landroidx/appcompat/view/menu/bi;
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

    iget-object p2, p1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object p2, p2, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-static {p2}, Landroidx/appcompat/view/menu/lv0;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I

    iget-object p2, p1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object p2, p2, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-static {p2}, Landroidx/appcompat/view/menu/lv0;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/view/menu/lr;->g(Ljava/io/File;)V

    iget-object p1, p1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object p1, p1, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-static {p1}, Landroidx/appcompat/view/menu/lv0;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/lr;->g(Ljava/io/File;)V

    const/4 p1, 0x0

    return p1
.end method
