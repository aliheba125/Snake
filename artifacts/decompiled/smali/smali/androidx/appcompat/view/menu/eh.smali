.class public Landroidx/appcompat/view/menu/eh;
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
    .locals 3

    const/4 p3, 0x1

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/j50;->b(I)Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p3, Ljava/io/File;

    iget-object v1, p1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v1, v1, Landroidx/appcompat/view/menu/u6;->G:Ljava/lang/String;

    invoke-direct {p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v1, v1, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-static {v1}, Landroidx/appcompat/view/menu/lv0;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {p3, v1}, Landroidx/appcompat/view/menu/oe0;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/j50;->b(I)Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Ljava/io/File;

    iget-object v1, p1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v1, v1, Landroidx/appcompat/view/menu/u6;->G:Ljava/lang/String;

    invoke-direct {p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v1, v1, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-static {v1}, Landroidx/appcompat/view/menu/lv0;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x8

    :try_start_1
    invoke-virtual {p2, v2}, Landroidx/appcompat/view/menu/j50;->b(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p3, v1}, Landroidx/appcompat/view/menu/lr;->i(Ljava/io/File;Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p3, v1}, Landroidx/appcompat/view/menu/lr;->b(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-static {p3, v1}, Landroidx/appcompat/view/menu/lr;->b(Ljava/io/File;Ljava/io/File;)V

    :cond_2
    :goto_1
    iget-object p1, p1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroidx/appcompat/view/menu/u6;->G:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0

    :cond_3
    :goto_3
    const/4 p1, 0x0

    return p1

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method
