control p() {
    action b(in bit<1> x, out bit<1> y) {
        bit<1> z;
        {
            bit<1> x_0;
            x_0 = x;
            z = x & x_0;
        }
    }
    apply {
        bit<1> x_1;
        bit<1> y_0;
        b(x_1, y_0);
    }
}

package m(p pipe);
.m(.p()) main;